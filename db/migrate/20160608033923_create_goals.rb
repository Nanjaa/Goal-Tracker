class CreateGoals < ActiveRecord::Migration
  def change
  	drop_table(:goals)
    create_table :goals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
