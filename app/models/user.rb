class User < ApplicationRecord
   has_many :daily_intakes, dependent: :destroy
   has_many :foods, through: :daily_intakes

   has_secure_password

   validates :username, uniqueness: true

  
   def total_servings
       total_servings = 0
       if self.daily_intakes
        self.daily_intakes.map do |daily_intake|
           total_servings += daily_intake.serving
        end
      end
        return total_servings
   end



   def total_calories
       
       total_calorie = 0
       if self.foods
        self.foods.map do |food|
           total_calorie += food.calorie
        end
      end
        return total_calorie
   end

   def remaining_calories
      remaining= 0
      if self.goal_calorie 
      remaining = self.goal_calorie - self.total_calories 
      end
      return remaining
   end

   def total_fat
       total_fat = 0
       if self.foods
        self.foods.map do |food|
           total_fat += food.fat
        end
      end
      return total_fat.round(2)
   end

   def remaining_fat
      remaining= 0
      if self.goal_fat
      remaining = self.goal_fat - self.total_fat
      end
      return remaining.round(2)
   end

   def total_carbs
       total_carbs = 0
       if self.foods
        self.foods.map do |food|
           total_carbs += food.carbs
        end
      end
     return total_carbs.round(2)
   end

   def remaining_carbs
     remaining= 0
     if self.goal_carbs
     remaining = self.goal_carbs - self.total_carbs
     end
     return remaining.round(2)
  end

   def total_protein
       total_protein = 0
       if self.foods
        self.foods.map do |food|
           total_protein += food.protein
        end
      end
        return total_protein.round(2)
   end

   def remaining_protein
     remaining= 0
     if self.goal_protein
     remaining = self.goal_protein - self.total_protein
     end
     return remaining.round(2)
  end

   def total_sugar
       total_sugar = 0
       if self.foods
        self.foods.map do |food|
           total_sugar += food.sugar
        end
      end
        return total_sugar.round(2)
   end

   def remaining_sugar
     remaining= 0
     if self.goal_sugar
     remaining = self.goal_sugar - self.total_sugar
     end
     return remaining.round(2)
  end
end