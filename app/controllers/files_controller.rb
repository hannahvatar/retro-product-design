require 'cgi'

class FilesController < ApplicationController
  def download
    file_path = Rails.root.join('public', params[:filename])
    Rails.logger.debug "Looking for file: #{file_path}" # Log the file path
    if File.exist?(file_path)
      send_file file_path,
                type: "audio/x-m4b",
                disposition: "attachment"
    else
      Rails.logger.debug "File not found: #{file_path}" # Log if the file is missing
      render plain: "File not found", status: :not_found
    end
  end
end
