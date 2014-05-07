class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.references :form, index: true
      t.string :name
      t.string :type
      t.boolean :required
      t.boolean :multiple
      t.string :options, array: true

      t.timestamps
    end
  end
end
