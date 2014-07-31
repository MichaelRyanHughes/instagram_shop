class HomeController < ApplicationController

  def index
    @photos = Instagram.user_recent_media("234675123", {client_id: "12fcdf7fa7c84507916ec01c7ee73c84"}, {count: 40}, {access_token: "234675123.12fcdf7.5777ff9bf14645be8e2d2bd81c7f3549"})
  end
end