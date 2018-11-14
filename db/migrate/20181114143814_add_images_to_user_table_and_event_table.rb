class AddImagesToUserTableAndEventTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string
    add_column :events, :image, :string
  end
end
