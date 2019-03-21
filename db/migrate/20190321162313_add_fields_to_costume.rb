class AddFieldsToCostume < ActiveRecord::Migration[5.2]
  def change
    add_column :costumes, :size, :string
    add_column :costumes, :state, :string
  end
end
