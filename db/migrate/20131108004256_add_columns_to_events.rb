class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :description, :string
    add_column :events, :location, :string
  end
end
