class CreateActivityGroups < ActiveRecord::Migration
  def change
    create_table :activity_groups do |t|
      t.text :type
      t.text :quantity
      t.text :change
      t.integer :change_quantity
      t.integer :order
      t.references :workout, index: true

      t.timestamps
    end
  end
end
