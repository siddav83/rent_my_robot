class AddUserToRobots < ActiveRecord::Migration[6.0]
  def change
    add_reference :robots, :user, index: true
  end
end
