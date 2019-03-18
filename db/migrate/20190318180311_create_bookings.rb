class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.bigint :locataire_id
      t.references :costume_id, foreign_key: true
      t.integer :total_price
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
