class Area < ActiveRecord::Base
  has_many :rooms, dependent: :destroy

  def index

  end
end
