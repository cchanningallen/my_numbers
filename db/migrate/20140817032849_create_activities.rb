class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :activity_group, index: true
      t.references :activity_type
      t.text :mod
      t.integer :quantity
      t.text :unit
      t.integer :weight
      t.integer :order

      t.timestamps
    end
  end
end
