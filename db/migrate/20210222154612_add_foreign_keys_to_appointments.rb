class AddForeignKeysToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :user, index: true
    add_reference :appointments, :robot, index: true
  end
end
