class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.references :disease, null: false, foreign_key: true
      t.references :symptom, null: false, foreign_key: true
      t.integer :weighting

      t.timestamps
    end
  end
end
