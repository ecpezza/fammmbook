class CreateInvolvements < ActiveRecord::Migration[5.0]
  def change
    create_table :involvements do |t|
      t.integer :industry_id
      t.integer :user_id
      t.boolean :experience
      t.boolean :interest

      t.timestamps

    end
  end
end
