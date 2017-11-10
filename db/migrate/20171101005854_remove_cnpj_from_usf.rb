class RemoveCnpjFromUsf < ActiveRecord::Migration[5.0]
  def change
    remove_column :usfs, :cnpf, :string
  end
end
