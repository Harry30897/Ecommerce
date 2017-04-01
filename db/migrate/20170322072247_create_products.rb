class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :price, null: false
      t.string :description
      t.string :color, null: false
      t.references :category, null: false, index: true, foreign_key: true
      t.references :seller, null: false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
