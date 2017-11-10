class RemoveCnpjFromUsf < ActiveRecord::Migration[5.0]
  def change
    remove_column :usfs, :cnpj, :string
  end
end
