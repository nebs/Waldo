class Room < ActiveRecord::Base
  has_many :checkins, dependent: :destroy
  belongs_to :area

  def occupants
    users = User.all
    users.select { |u| u.current_room == self }
  end
end
