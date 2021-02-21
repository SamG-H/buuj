class AddCompletedColumnToBullets < ActiveRecord::Migration[6.1]
  def change
    add_column :bullets, :completed, :boolean
  end
end
