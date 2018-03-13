class AddYearToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :year, :integer
  end
end
