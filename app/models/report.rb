# frozen-string-literal: true

# Class representing the CSP reports from the database
class Report < ApplicationRecord
  self.per_page = 50
  CSP_ATTRIBUTES = %w[
    remote_addr blocked_uri disposition document_uri effective_directive
    original_policy referrer status_code violated_directive source_file
  ].freeze

  CSP_ATTRIBUTES.each do |column_name|
    scope "distinct_#{column_name}", lambda {
      select("#{column_name}, COUNT(#{column_name})").group(column_name)
    }
  end
end
