class AddMandatoryUserIdToEvents < ActiveRecord::Migration
  def change
    change_column :events, :user_id, :integer, :null => false
  end
end
