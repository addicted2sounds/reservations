class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :table, index: true, foreign_key: true
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
  end
end
