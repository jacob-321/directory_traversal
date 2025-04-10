class FileStorageController < ApplicationController

  def index
    file_storage = Rails.root.join("file_storage")
    @files = Dir.entries(file_storage).select do |filename|
      path = file_storage.join(filename)
      File.file?(path)
    end
  end

  def download
    filename = params[:file]
    filepath = Rails.root.join("file_storage", filename)

    abspath = File.expand_path(filepath)

    if abspath.start_with?(Rails.root.join('file_storage').to_s) || abspath.start_with?(Rails.root.join('secrets').to_s)
      if File.exist?(abspath)
        send_file abspath, disposition: 'attachment'
      else
        render plain: "ERROR: #{filename} not found!", status: :not_found
      end
    else
      render plain: "ERROR: File path is invalid!", status: :forbidden
    end
  end
end
