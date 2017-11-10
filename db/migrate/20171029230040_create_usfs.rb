class CreateUsfs < ActiveRecord::Migration[5.0]
  def change
    create_table :usfs do |t|
      t.string :nome
      t.string :nome_fantasia
      t.string :cnpj
      t.integer :cnes
      t.string :telefone
      t.string :bairro
      t.string :cep
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :ponto_de_referencia
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
