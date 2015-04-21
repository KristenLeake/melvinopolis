class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :costume_id
      t.integer :commission_id
      t.string :picture
      t.string :caption

      t.timestamps null: false
    end
  end
end
