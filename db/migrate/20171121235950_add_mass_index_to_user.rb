class AddMassIndexToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :mass_index, :integer, default: 0
  end
end
