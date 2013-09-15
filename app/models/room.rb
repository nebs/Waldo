class Room < ActiveRecord::Base
  has_many :checkins

  def occupants
    users = User.all
    users.select do |user|
      user.checkins.count > 0 &&
      user.checkins.last.room.present? &&
      user.checkins.last.room == self
    end
  end
end
