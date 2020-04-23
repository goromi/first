class AddTime < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:timerecord,:string
  end
end
