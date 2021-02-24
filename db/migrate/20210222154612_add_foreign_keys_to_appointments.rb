class AddForeignKeysToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :robots, null: false, foreign_key: true
    add_reference :appointments, :users, null: false, foreign_key: true
  end
end
