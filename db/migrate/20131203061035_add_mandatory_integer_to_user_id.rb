class AddMandatoryIntegerToUserId < ActiveRecord::Migration
  def change
    change_column :apps, :user_id, :integer
  end
end
