class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.datetime :birthday 
      t.string :city
      t.string :state
      t.text :street_address
      t.string :phone
      t.string :type
      t.string :user_id
      t.timestamps 
    end
  end
end
