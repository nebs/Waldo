module UsersHelper
  def user_styles(user)
    last_checkin = user.checkins.last
    return '' unless last_checkin.present?
    styles = ''
    styles += "left: #{(last_checkin.x * 100).to_i}%;"
    styles += "top: #{(last_checkin.y * 100).to_i}%;"
    styles
  end
end
