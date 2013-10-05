namespace :cleanup do
  desc 'Delete all checkins'
  task :delete_all_checkins => :environment do
    puts "Deleting #{Checkin.count} checkins..."
    Checkin.delete_all
    puts 'Done!'
  end

  desc 'Delete all users'
  task :delete_all_users => :environment do
    puts "Deleting #{User.count} users..."
    User.delete_all
    puts 'Done!'
  end
end
