class AddFloorplanIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :floorplan_id, :integer
  end
end
