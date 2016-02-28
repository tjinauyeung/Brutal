class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.references :building, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
