class RemoveMonthFromEntries < ActiveRecord::Migration[5.1]
  def change
    remove_column :entries, :month, :string
  end
end
