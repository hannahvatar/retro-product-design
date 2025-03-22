class AudiobooksController < ApplicationController
  def download
    file_path = Rails.root.join("public", "audiobooks", "my_audiobook.m4b")
    send_file file_path, type: "audio/mp4", disposition: "attachment"
  end
end
