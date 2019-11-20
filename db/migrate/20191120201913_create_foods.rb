class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calorie
      t.integer :protein
      t.integer :fat
      t.integer :carbs
      t.integer :sugar
      t.integer :serving_size

      t.timestamps
    end
  end
end
