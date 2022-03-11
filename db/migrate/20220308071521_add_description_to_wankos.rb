class AddDescriptionToWankos < ActiveRecord::Migration[5.2]
  def change
    add_column :wankos, :description, :string
  end
end
