class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.float :avgCost
      t.string :category
      t.date :releaseDate
      t.text :description
      t.attachment :productPhoto

      t.timestamps
    end
  end
end
