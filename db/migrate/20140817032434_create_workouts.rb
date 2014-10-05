class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :name
      t.date :date
      t.text :notes

      t.timestamps
    end
  end
end
