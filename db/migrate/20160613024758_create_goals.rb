class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
