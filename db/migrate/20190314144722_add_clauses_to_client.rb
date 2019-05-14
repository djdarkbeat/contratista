class AddClausesToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :services, :text
    add_column :clients, :payments, :text
  end
end
