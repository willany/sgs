class CreateHolidays < ActiveRecord::Migration[5.0]
  def change
    create_table :holidays do |t|
      t.date :date
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
