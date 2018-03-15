class AddMonthToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :month, :integer
  end
end
