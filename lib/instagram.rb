require "instagram"

Instagram.configure do |config|
  config.client_id = "12fcdf7fa7c84507916ec01c7ee73c84"
  config.access_token = "234675123.12fcdf7.5777ff9bf14645be8e2d2bd81c7f3549"
end

Instagram.images do |image|
  image.thumbnail
end