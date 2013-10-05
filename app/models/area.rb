class Area < ActiveRecord::Base
  has_many :zones, dependent: :destroy

  def index
  end
end
