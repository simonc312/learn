class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :day_phone
      t.text :resume

      t.timestamps
    end
  end
end
