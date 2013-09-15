class AddWidthAndHeightToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :width, :float
    add_column :rooms, :height, :float
  end
end
