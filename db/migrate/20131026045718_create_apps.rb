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
      t.integer :user_id #### HUGE ERROR WAS CAUSED BY THIS being a string instead of integer!!!!!!
      t.text :resume
      t.text :cover_letter
      t.timestamps 
    end
  end
end
