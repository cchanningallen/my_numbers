class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :name
      t.references :collector, index: true
      t.text :mod
      t.integer :count
      t.text :measure
      t.integer :weight

      t.timestamps
    end
  end
end
