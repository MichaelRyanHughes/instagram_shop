class HomeController < ApplicationController

  def index
    #id = "25e9ba1460bf47bb93567ee703dbdf4f"
    #token = "4433201.25e9ba1.9c84ed99f4c84951a476b08855236735"
    #user_id = "4433201"
    id = INSTAGRAM_CLIENT_ID
    token = INSTAGRAM_TOKEN
    user_id = INSTAGRAM_UID
    @photos = Instagram.user_recent_media(user_id, {client_id: id, access_token: token,count: 28,})
    #@photos_next = Instagram.user_recent_media(user_id, {client_id: id, access_token: token, count: 12, max_id: '452467253150086099'})
  end
end