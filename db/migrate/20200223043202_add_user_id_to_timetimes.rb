class AddUserIdToTimetimes < ActiveRecord::Migration[5.2]
  def change
    add_column :timetimes, :user_id, :integer
  end
end
