class RemoveIsFirstFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :is_first, :boolean
  end
end
