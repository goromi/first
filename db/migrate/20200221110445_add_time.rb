class AddTime < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:timerecord,:String
  end
end
