class AddIsFirstFromUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_first, :boolean, default: true
  end
end
