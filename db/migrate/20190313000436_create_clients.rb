class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :worker
      t.string :nature
      t.date :date

      t.timestamps
    end
  end
end
