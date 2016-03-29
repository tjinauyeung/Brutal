class AddDescriptionToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :description, :string
  end
end
