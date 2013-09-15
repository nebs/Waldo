module ApplicationHelper
  def user_photo(user)
    image_tag "http://graph.facebook.com/#{user.uid}/picture?type=small"
  end
end
