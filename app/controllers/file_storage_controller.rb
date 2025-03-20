class FileStorageController < ApplicationController

  def index

  end

  def show
    @file = params[:file]
  end


end
