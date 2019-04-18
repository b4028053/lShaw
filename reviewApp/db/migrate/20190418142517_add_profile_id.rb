class AddProfileId < ActiveRecord::Migration[5.2]
  def change
  	add_reference :reviews, :profiles, forgein_key: true
  end
end
