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

  validates :_1, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_2, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_3, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_4, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_5, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true

  validates :_7, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_8, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_9, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_10, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true

  validates :_11, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_12, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_13, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_14, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true

  validates :_18, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_19, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_20, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_21, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_22, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true

  validates :_33, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_34, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_35, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_36, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true
  validates :_37, numericality: { greater_than: 0, less_than_or_equal_to: 100, :message => "X" }, :allow_nil => true


end
