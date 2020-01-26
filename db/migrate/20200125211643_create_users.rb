class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :session_id
      t.string :name
      t.text :bio
      t.string :pic_url

      t.timestamps
    end
  end
end
