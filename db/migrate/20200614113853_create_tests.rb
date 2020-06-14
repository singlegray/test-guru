class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.integer :level, null: false, default: 1

      t.timestamps
    end
  end
end
