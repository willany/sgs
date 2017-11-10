class CreateProfessionals < ActiveRecord::Migration[5.0]
  def change
    create_table :professionals do |t|
      t.string :nome
      t.references :professionalType, foreign_key: true
      t.string :crm
      t.references :specialty, foreign_key: true
      t.string :coren
      t.string :matricula
      t.references :microArea, foreign_key: true

      t.timestamps
    end
  end
end
