module ZonesHelper
  def zone_styles(zone)
    styles = ''
    styles += "left: #{(zone.x * 100).to_i}%;"
    styles += "top: #{(zone.y * 100).to_i}%;"
    styles += "width: #{(zone.width * 100).to_i}%;"
    styles += "height: #{(zone.height * 100).to_i}%;"
    styles
  end
end
