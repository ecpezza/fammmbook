class RemoveInterestFromFunction < ActiveRecord::Migration[5.0]
  def change
    remove_column :functions, :interest
  end
end
