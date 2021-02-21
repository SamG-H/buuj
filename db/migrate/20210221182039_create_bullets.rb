class CreateBullets < ActiveRecord::Migration[6.1]
  def change
    create_table :bullets do |t|
      t.text :body
      t.string :type
      t.references :log, null: false, foreign_key: true

      t.timestamps
    end
  end
end
