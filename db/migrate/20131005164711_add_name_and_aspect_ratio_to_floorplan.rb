class AddNameAndAspectRatioToFloorplan < ActiveRecord::Migration
  def change
    add_column :floorplans, :name, :string
    add_column :floorplans, :aspect_ratio, :float
  end
end
