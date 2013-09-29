class User < ActiveRecord::Base
  has_many :checkins

  def active?
    checkins.count > 0 && checkins.last.created_at > 1.days.ago
  end

  def current_room
    (active? && checkins.last.room.present?) ? checkins.last.room : nil
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
