class ChangeTypeColumnNameToKindOnBullets < ActiveRecord::Migration[6.1]
  def change
    rename_column :bullets, :type, :kind
  end
end
