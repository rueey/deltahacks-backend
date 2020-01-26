class ChangeLethalityToString < ActiveRecord::Migration[6.0]
  def change
    change_column :diseases, :lethality, :string
  end
end
