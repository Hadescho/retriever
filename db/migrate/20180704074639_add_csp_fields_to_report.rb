class AddCspFieldsToReport < ActiveRecord::Migration[5.2]
  def change
    change_table :reports do |t|
      t.column :blocked_uri, :string
      t.column :disposition, :string
      t.column :document_uri, :string
      t.column :effective_directive, :string
      t.column :original_policy, :string
      t.column :referrer, :string
      t.column :status_code, :integer
      t.column :violated_directive, :string
    end
  end
end
