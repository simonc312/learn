class AddAcceptedToApp < ActiveRecord::Migration
  def change
    add_column :apps, :accepted, :boolean, default: false
  end
end
