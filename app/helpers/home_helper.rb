module HomeHelper
  def area_styles(area)
    "padding-bottom: #{100 / area.aspect_ratio}%;"
  end

  def zone_styles(zone)
    styles = ''
    styles += "left: #{(zone.x * 100).to_i}%;"
    styles += "top: #{(zone.y * 100).to_i}%;"
    styles += "width: #{(zone.width * 100).to_i}%;"
    styles += "height: #{(zone.height * 100).to_i}%;"
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
