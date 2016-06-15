class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.string :goal_amount
      t.references :goal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
