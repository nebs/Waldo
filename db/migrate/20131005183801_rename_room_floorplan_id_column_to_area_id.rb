class RenameRoomFloorplanIdColumnToAreaId < ActiveRecord::Migration
  def change
    rename_column :rooms, :floorplan_id, :area_id
  end
end
