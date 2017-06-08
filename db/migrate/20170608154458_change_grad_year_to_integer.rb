class ChangeGradYearToInteger < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :grad_year, :date
    add_column :users, :grad_year, :integer
  end
end
