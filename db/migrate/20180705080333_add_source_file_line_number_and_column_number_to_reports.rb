class AddSourceFileLineNumberAndColumnNumberToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :source_file, :string
    add_column :reports, :line_number, :integer
    add_column :reports, :column_number, :integer
  end
end
