class AudiobooksController < ApplicationController
  def download
    # Dropbox MP3 URL
    dropbox_url = "https://www.dropbox.com/scl/fi/tq4tl5a9odb1w0ewlgx1d/Conversational-AI-9.18.32-AM.mp3?rlkey=l0g4p835tbq3po1tunfp6t1xd&st=zm1o97yv&dl=1"

    # Redirecting the user to the Dropbox MP3 file
    redirect_to dropbox_url
  end
end
