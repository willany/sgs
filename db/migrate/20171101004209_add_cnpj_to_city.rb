class AddCnpjToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :cnpj, :string
    add_index :cities, :cnpj, unique: true
  end
end
