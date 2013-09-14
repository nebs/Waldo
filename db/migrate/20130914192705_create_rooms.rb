class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
