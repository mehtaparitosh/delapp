class Entry < ApplicationRecord
  def self.to_csv(options = {})
    exclude = ['created_at', 'updated_at', 'month', 'year']
    CSV.generate() do |csv|
      csv << column_names-exclude
      all.each do |entry|
        csv << entry.attributes.values_at(*column_names-exclude)
      end
    end
  end
end
