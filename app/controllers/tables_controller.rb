# frozen_string_literal: true

# Controller responsible for displaying tables containing statistics of the
# csp_reporter
class TablesController < ApplicationController
  def show
    @distincts = Report::CSP_ATTRIBUTES.map do |column_name|
      relation_object = Report.public_send("distinct_#{column_name}")
      TableHashBuilder.new(column_name, relation_object).build
    end
  end
end
