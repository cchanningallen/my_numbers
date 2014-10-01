class CreateActivityTypes < ActiveRecord::Migration
  def change
    create_table :activity_types do |t|
      t.string :name
      t.array :mod_options
      t.array :data_point_categories

      t.timestamps
    end
  end
end
