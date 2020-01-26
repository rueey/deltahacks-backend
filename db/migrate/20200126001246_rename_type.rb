class RenameType < ActiveRecord::Migration[6.0]
  def change
    rename_column :diseases, :type, :disease_class
  end
end
