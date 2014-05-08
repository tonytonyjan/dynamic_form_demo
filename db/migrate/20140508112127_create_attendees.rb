class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.references :user, null: false
      t.references :form, null: false
      t.index(%i[user_id form_id], unique: true)
      t.index(%i[form_id user_id], unique: true)
      t.timestamps
    end
  end
end
