# app/controllers/audiobooks_controller.rb
class AudiobooksController < ApplicationController
  require 'open-uri'

  def download
    # The Dropbox direct download URL
    dropbox_url = "https://dl.dropboxusercontent.com/scl/fi/vkdg3u7rku5kfngzfz3lp/test-02.m4b?rlkey=ejazrw5t9dbdblj8juawnkhhk&dl=1"

    # Download the file from Dropbox
    audiobook_data = URI.open(dropbox_url).read

    # Send the file with explicit headers
    send_data audiobook_data,
              type: "audio/x-m4b",
              disposition: "attachment",
              filename: "test-02.m4b"
  end
end
