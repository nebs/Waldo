namespace :area do
  desc 'Generate all the areas and zones'
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

      zones = area['zones']
      puts "- - Generating #{zones.length} zones..."
      zones.each do |zone|
        puts '- - - ' + zone['name']
        zone_model = Zone.create!(
          name: zone['name'],
          x: zone['x'],
          y: zone['y'],
          width: zone['w'],
          height: zone['h'],
          area_id: area_model.id
        )
      end
    end

    puts 'Done!'
  end
end
