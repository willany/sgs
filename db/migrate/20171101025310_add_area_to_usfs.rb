class AddAreaToUsfs < ActiveRecord::Migration[5.0]
  def change
    add_column :usfs, :area, :string
  end
end
