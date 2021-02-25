class AddDescriptionToRobots < ActiveRecord::Migration[6.0]
  def change
    add_column :robots, :description, :text
  end
end
