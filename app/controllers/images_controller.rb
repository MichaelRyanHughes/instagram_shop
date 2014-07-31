class ImagesController < ApplicationController

  def index
    images = Instagram.user_recent_media(INSTAGRAM_UID, {client_id: INSTAGRAM_CLIENT_ID, count: 28, access_token: INSTAGRAM_TOKEN})
    render json: images
  end
end
