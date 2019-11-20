class CreateDailyIntakes < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_intakes do |t|
      t.belongs_to :user
      t.belongs_to :meal_type
      t.belongs_to :food
      t.timestamps
    end
  end
end
