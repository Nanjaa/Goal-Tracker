class AddPointsToAmounts < ActiveRecord::Migration
  def change
    add_column :amounts, :points, :integer
  end
end
