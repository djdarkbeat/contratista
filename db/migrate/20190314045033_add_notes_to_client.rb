class AddNotesToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :notes, :text
  end
end
