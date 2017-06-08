class CreateFunctions < ActiveRecord::Migration[5.0]
  def change
    create_table :functions do |t|
      t.string :function_name

      t.timestamps

    end
  end
end
