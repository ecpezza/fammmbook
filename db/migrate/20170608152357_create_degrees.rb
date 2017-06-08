class CreateDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :degrees do |t|
      t.integer :school_id
      t.integer :user_id
      t.string :degree
      t.integer :grad_year

      t.timestamps

    end
  end
end
