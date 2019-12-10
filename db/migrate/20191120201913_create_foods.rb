class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calorie
      t.float :protein
      t.float :fat
      t.float :carbs
      t.float :sugar
      t.integer :serving_size

      t.timestamps
    end
  end
end
