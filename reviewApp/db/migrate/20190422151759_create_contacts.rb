class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :userName
      t.string :userEmail
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
