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
       if self.daily_intakes
        self.daily_intakes.map do |daily_intake|
           total_calorie += daily_intake.total_calories
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
       total = 0
       if self.daily_intakes
        self.daily_intakes.map do |daily_intake|
           total += daily_intake.total_fat
        end
      end
      return total.round(2)
   end

   def remaining_fat
      remaining= 0
      if self.goal_fat
      remaining = self.goal_fat - self.total_fat
      end
      return remaining.round(2)
   end

   def total_carbs
      total = 0
      if self.daily_intakes
       self.daily_intakes.map do |daily_intake|
          total += daily_intake.total_carbs
       end
     end
     return total.round(2)
  end

   def remaining_carbs
     remaining= 0
     if self.goal_carbs
     remaining = self.goal_carbs - self.total_carbs
     end
     return remaining.round(2)
  end

  def total_protein
   total = 0
   if self.daily_intakes
    self.daily_intakes.map do |daily_intake|
       total += daily_intake.total_protein
    end
  end
  return total.round(2)
 end

   def remaining_protein
     remaining= 0
     if self.goal_protein
     remaining = self.goal_protein - self.total_protein
     end
     return remaining.round(2)
  end

  def total_sugar
   total = 0
   if self.daily_intakes
    self.daily_intakes.map do |daily_intake|
       total += daily_intake.total_sugar
    end
  end
  return total.round(2)
 end

   def remaining_sugar
     remaining= 0
     if self.goal_sugar
     remaining = self.goal_sugar - self.total_sugar
     end
     return remaining.round(2)
  end
end