class AddMoreClausesToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :breach_period, :string
    add_column :clients, :business_type, :text
  end
end
