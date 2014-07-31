class HomeController < ApplicationController

  def index
    id = "12fcdf7fa7c84507916ec01c7ee73c84"
    token = "234675123.12fcdf7.5777ff9bf14645be8e2d2bd81c7f3549"
    user_id = "234675123"
    @photos = Instagram.user_recent_media(user_id, {client_id: id, count: 28, access_token: token})
  end
end