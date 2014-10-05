class CreateActivityGroups < ActiveRecord::Migration
  def change
    create_table :activity_groups do |t|
      t.text :type
      t.text :scoreType
      t.text :score
      t.references :workout, index: true

      t.timestamps
    end
  end
end
