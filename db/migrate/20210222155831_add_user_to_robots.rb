class AddUserToRobots < ActiveRecord::Migration[6.0]
  def change
    add_reference :robots, :users, null: false, foreign_key: true
  end
end
