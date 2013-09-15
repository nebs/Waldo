module ApplicationHelper
  def user_photo(user)
    image_tag "http://graph.facebook.com/#{user.uid}/picture?type=small"
  end

  def short_user_name(user)
    words = user.name.split(' ')
    result = words.first
    if words.length > 1
      result += " #{words[1].capitalize.first}."
    end
  end
end
