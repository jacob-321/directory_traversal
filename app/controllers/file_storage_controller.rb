class FileStorageController < ApplicationController

  def index
  end

  def show
    @file = params[:file]
    file_path = Rails.root.join('public', file)

    if File.exist?(file_path)
      send_file file_path
    else
      render plain: "ERROR: File is not available", status: not_found
    end
  end
end
