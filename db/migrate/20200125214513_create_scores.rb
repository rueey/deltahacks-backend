class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.references :user, null: false, foreign_key: true
      t.references :disease, null: false, foreign_key: true, unique: true
      t.integer :score

      t.timestamps
    end
  end
end
