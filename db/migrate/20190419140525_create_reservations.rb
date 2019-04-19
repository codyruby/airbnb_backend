class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.references :guest, index: true
      t.belongs_to :accommodation, index: true

      t.timestamps
    end
  end
end
