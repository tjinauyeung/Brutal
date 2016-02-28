class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :location
      t.string :build_year
      t.string :architect
      t.string :image

      t.timestamps null: false
    end
  end
end
