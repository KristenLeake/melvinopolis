class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.string :character
      t.string :variation
      t.text :notes
      t.string :awards
      t.string :thumbnail
      t.integer :year_id
      t.integer :show_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
