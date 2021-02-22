class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :sessions_datetime
      t.integer :sessions_duration

      t.timestamps
    end
  end
end
