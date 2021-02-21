class ChangeTypeColumnNameToKindOnLogs < ActiveRecord::Migration[6.1]
  def change
    rename_column :logs, :type, :kind
  end
end
