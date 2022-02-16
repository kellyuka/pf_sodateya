# frozen_string_literal: true

class CreateWankos < ActiveRecord::Migration[5.2]
  def change
    create_table :wankos do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
