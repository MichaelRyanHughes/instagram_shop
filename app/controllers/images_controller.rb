class ImagesController < ApplicationController

  def index
    #images = Instagram.user_recent_media(INSTAGRAM_UID, {client_id: INSTAGRAM_CLIENT_ID, count: 1, access_token: INSTAGRAM_TOKEN})
    images = Instagram.user_recent_media(INSTAGRAM_UID, 
      {client_id: INSTAGRAM_CLIENT_ID, 
        count: 12, 
        access_token: INSTAGRAM_TOKEN, 
        max_id: params['max_id']})
    #binding.pry
    render json: images
  end
end
