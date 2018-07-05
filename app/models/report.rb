# frozen-string-literal: true

# Class representing the CSP reports from the database
class Report < ApplicationRecord
  self.per_page = 50
  CSP_ATTRIBUTES = column_names - %w[id data created_at updated_at]
  CSP_ATTRIBUTES.each do |column_name|
    scope "distinct_#{column_name}", lambda {
      select("#{column_name}, COUNT(#{column_name})").group(column_name)
    }
  end
end
