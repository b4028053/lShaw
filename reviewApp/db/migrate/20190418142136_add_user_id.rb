class AddUserId < ActiveRecord::Migration[5.2]
  def change
  	add_reference :profiles, :users, forgein_key: true
  end
end
