class DatabaseCreation < ActiveRecord::Migration[6.1]
  def change
    create_table :permissions do |t| 
      t.belongs_to :user
      t.integer :access
      t.belongs_to :user_detail
      t.timestamps
    end

    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :twitter
      t.timestamps
    end
  end
end
