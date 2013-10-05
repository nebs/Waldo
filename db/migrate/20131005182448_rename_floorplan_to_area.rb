class RenameFloorplanToArea < ActiveRecord::Migration
  def change
    rename_table :floorplans, :areas
  end
end
