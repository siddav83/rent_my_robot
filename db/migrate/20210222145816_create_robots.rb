class CreateRobots < ActiveRecord::Migration[6.0]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :function
      t.integer :rating

      t.timestamps
    end
  end
end
