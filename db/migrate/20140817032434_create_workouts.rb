class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :name
      t.date :date
      t.text :notes
      t.text :scoreType
      t.text :score

      t.timestamps
    end
  end
end
