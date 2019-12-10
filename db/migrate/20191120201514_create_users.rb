class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :age
      t.string :gender
      t.float :weight
      t.float :height
      t.string :image
      t.string :username
      t.integer :goal_calorie
      t.float :goal_carbs
      t.float :goal_fat
      t.float :goal_sugar
      t.float :goal_protein

      t.timestamps
    end
  end
end
