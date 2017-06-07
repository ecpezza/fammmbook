class CreateDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :degrees do |t|
      t.integer :school_id
      t.integer :user_id

      t.timestamps

    end
  end
end
