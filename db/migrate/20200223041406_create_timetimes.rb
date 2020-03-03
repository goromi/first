class CreateTimetimes < ActiveRecord::Migration[5.2]
  def change
    create_table :timetimes do |t|
      t.string :timerecord

      t.timestamps
    end
  end
end
