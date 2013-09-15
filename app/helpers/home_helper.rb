module HomeHelper
  def room_styles(room)
    styles = ''
    styles += "left: #{(room.x * 100).to_i}%;"
    styles += "top: #{(room.y * 100).to_i}%;"
    styles += "width: #{(room.width * 100).to_i}%;"
    styles += "height: #{(room.height * 100).to_i}%;"
    styles
  end

  def user_styles(user)
    last_checkin = user.checkins.last
    return '' unless last_checkin.present?
    styles = ''
    styles += "left: #{(last_checkin.x * 100).to_i}%;"
    styles += "top: #{(last_checkin.y * 100).to_i}%;"
    styles
  end
end
