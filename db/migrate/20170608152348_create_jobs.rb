class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.integer :user_id
      t.date :start_date
      t.date :end_date

      t.timestamps

    end
  end
end
