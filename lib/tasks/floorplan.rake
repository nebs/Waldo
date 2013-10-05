namespace :floorplan do
  desc 'Generate all the floorplans and rooms'
  task :generate_all => :environment do
    puts "Deleting #{Floorplan.count} floorplans..."
    Floorplan.delete_all

    floorplans = YAML.load_file("#{Rails.root.to_s}/config/floorplans.yml")
    puts "Generating #{floorplans.length} floorplans..."
    floorplans.each do |floorplan|
      puts '- ' + floorplan['name']
      floorplan_model = Floorplan.create!(
        name: floorplan['name'],
        aspect_ratio: floorplan['aspect_ratio']
      )

      rooms = floorplan['rooms']
      puts "- - Generating #{rooms.length} rooms..."
      rooms.each do |room|
        puts '- - - ' + room['name']
        room_model = Room.create!(
          name: room['name'],
          x: room['x'],
          y: room['y'],
          width: room['w'],
          height: room['h'],
          floorplan_id: floorplan_model.id
        )
      end
    end

    puts 'Done!'
  end
end
