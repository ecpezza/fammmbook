class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.integer :function_id
      t.integer :user_id
      t.boolean :experience
      t.string :interest

      t.timestamps

    end
  end
end
