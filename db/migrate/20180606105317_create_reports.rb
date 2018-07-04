class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.inet :remote_addr, null: false
      t.json :data, null: false

      t.timestamps
    end
  end
end
