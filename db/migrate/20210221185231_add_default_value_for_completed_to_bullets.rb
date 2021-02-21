class AddDefaultValueForCompletedToBullets < ActiveRecord::Migration[6.1]
  def change
    change_column_default :bullets, :completed, from: nil, to: false
  end
end
