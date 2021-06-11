class CreateTotals < ActiveRecord::Migration[6.0]
  def change
    create_table :totals do |t|
      t.string :protein
      t.string :fat
      t.string :carb
      t.string :calorie
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
