class RenameRoomToZone < ActiveRecord::Migration
  def change
    rename_table :rooms, :zones
    rename_column :checkins, :room_id, :zone_id
  end
end
