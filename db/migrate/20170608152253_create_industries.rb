class CreateIndustries < ActiveRecord::Migration[5.0]
  def change
    create_table :industries do |t|
      t.string :industry_name

      t.timestamps

    end
  end
end
