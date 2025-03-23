class AudiobooksController < ApplicationController
  def download
    file_path = Rails.root.join("public", "audiobooks", "my_audiobook.m4b")

    if File.exist?(file_path)
      send_file file_path,
                type: "audio/x-m4b", # Alternative MIME type for M4B
                disposition: "attachment",
                filename: "my_audiobook.m4b"
    else
      render plain: "File not found", status: :not_found
    end
  end
end
