class ChangeFunctionInterestToBoolean < ActiveRecord::Migration[5.0]
  def change
    remove_column :roles, :interest, :string
    add_column :roles, :interest, :boolean
  end
end
