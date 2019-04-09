class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.integer :productRating
      t.text :reviewContent
      t.date :reviewDate

      t.timestamps
    end
  end
end
