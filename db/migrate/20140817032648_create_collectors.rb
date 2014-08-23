class CreateCollectors < ActiveRecord::Migration
  def change
    create_table :collectors do |t|
      t.text :type
      t.references :parent, index: true
      t.references :workout, index: true

      t.timestamps
    end
  end
end
