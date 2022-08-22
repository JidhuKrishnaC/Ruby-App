class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.date :dob
      t.integer :user_id

      t.timestamps
    end
  end
end
