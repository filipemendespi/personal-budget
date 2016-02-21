class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.decimal :value
      t.datetime :event
      t.string :observations
      t.references :category

      t.timestamps null: false
    end
    add_index :entries, :category_id
  end
end
