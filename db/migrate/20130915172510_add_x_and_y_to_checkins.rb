class AddXAndYToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :x, :float
    add_column :checkins, :y, :float
  end
end
