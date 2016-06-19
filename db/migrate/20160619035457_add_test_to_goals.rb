class AddTestToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :test, :string
  end
end
