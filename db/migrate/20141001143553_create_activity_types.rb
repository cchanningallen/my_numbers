class CreateActivityTypes < ActiveRecord::Migration
  def change
    create_table :activity_types do |t|
      t.string :name
      t.text :mod_options, array: true, default: []
      t.text :categories, array: true, default: []

      t.timestamps
    end
  end
end
