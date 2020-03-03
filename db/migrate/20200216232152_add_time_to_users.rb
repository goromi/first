class AddTimeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:time,:float
  end
end
