class AddTitleToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :title, :string
  end
end
