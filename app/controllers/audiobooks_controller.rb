class AudiobooksController < ApplicationController
  def download
    file_path = Rails.root.join("public", "audiobooks", "my_audiobook.m4b")

    # Use the proper MIME type for audiobooks
    send_file file_path,
              type: "audio/x-m4b",
              disposition: "attachment",
              filename: "my_audiobook.m4b"
  end
end
