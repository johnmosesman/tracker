class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :records, :activities
  end
end
