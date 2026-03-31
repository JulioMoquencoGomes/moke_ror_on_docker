class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.string :author, null: false
      t.integer :year, null: false

      t.timestamps
    end
  end
end
