class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.string :character
      t.string :variation
      t.text :notes
      t.string :thumbnail
      t.integer :year_id
      t.integer :show_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
