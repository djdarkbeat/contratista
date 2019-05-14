class AddAttributesToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :business, :string
    add_column :clients, :work_type, :string
  end
end
