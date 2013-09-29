namespace :floorplan do
  desc 'Generate all the rooms'
  task :generate_rooms => :environment do
    puts "Deleting #{Room.count} rooms..."
    Room.delete_all
    rooms = YAML.load_file("#{Rails.root.to_s}/config/rooms.yml")
    puts "Generating #{rooms.length} rooms..."
    rooms.each do |room|
      puts '- ' + room['name']
      Room.create!(
        name: room['name'],
        x: room['x'],
        y: room['y'],
        width: room['w'],
        height: room['h']
      )
    end

    puts 'Done!'
  end
end
