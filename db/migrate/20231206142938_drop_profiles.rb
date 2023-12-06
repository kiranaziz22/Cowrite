class DropProfiles < ActiveRecord::Migration[7.1]
  def change
    drop_table :profiles
  end
end
