namespace :area do
  desc 'Generate all the areas and rooms'
  task :generate_all => :environment do
    puts "Deleting #{Area.count} areas..."
    Area.delete_all

    areas = YAML.load_file("#{Rails.root.to_s}/config/areas.yml")
    puts "Generating #{areas.length} areas..."
    areas.each do |area|
      puts '- ' + area['name']
      area_model = Area.create!(
        name: area['name'],
        aspect_ratio: area['aspect_ratio']
      )

      rooms = area['rooms']
      puts "- - Generating #{rooms.length} rooms..."
      rooms.each do |room|
        puts '- - - ' + room['name']
        room_model = Room.create!(
          name: room['name'],
          x: room['x'],
          y: room['y'],
          width: room['w'],
          height: room['h'],
          area_id: area_model.id
        )
      end
    end

    puts 'Done!'
  end
end
