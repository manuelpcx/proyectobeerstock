class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :detail
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
