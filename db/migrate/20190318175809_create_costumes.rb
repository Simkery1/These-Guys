class CreateCostumes < ActiveRecord::Migration[5.2]
  def change
    create_table :costumes do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :price_per_day
      t.bigint :owner_id

      t.timestamps
    end

    add_reference :costumes, :users, column: :owner_id
    add_index :costumes, :owner_id
  end
end
