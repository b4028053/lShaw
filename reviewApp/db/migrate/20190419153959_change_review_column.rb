class ChangeReviewColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :reviews, :profiles_id, :profile_id
  end
end
