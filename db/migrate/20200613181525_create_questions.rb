class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :test, null: false, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
