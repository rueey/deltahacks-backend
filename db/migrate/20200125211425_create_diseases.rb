class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.string :disease
      t.text :bio
      t.string :pic_url
      t.boolean :contagious
      t.integer :lethality
      t.string :type
      t.string :phone

      t.timestamps
    end
  end
end
