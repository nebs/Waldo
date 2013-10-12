module AreasHelper
  def area_styles(area)
    "padding-bottom: #{100 / area.aspect_ratio}%;"
  end
end
