class AddExpenseToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :expense, :string
  end
end
