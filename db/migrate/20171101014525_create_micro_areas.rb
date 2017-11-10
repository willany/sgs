class CreateMicroAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :micro_areas do |t|
      t.integer :name
      t.references :usf, foreign_key: true

      t.timestamps
    end
  end
end
