class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :costume_id
      t.integer :commission_id

      t.timestamps null: false
    end
  end
end
