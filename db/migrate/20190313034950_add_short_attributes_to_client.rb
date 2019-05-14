class AddShortAttributesToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :signatory, :string
  end
end
