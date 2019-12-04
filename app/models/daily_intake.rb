class DailyIntake < ApplicationRecord
    belongs_to :user
    belongs_to :food

    def total_calories
        total= 0
        if self.food
            total = self.food.calorie * self.serving
        end
        return total
    end


    def total_fat
        total= 0
        if self.food
            total = self.food.fat * self.serving
        end
        return total.round(2)
    end

    def total_carbs
        total= 0
        if self.food
            total = self.food.carbs * self.serving
        end
        return total.round(2)
    end

    def total_protein
        total= 0
        if self.food
            total = self.food.protein * self.serving
        end
        return total.round(2)
    end

    def total_sugar
        total= 0
        if self.food
            total = self.food.sugar * self.serving
        end
        return total.round(2)
    end

    def user_remaining_calories
        remaining = 0
        if self.user.goal_calorie
        remaining = self.user.goal_calorie - self.total_calories
        end
        return remaining
    end

    def user_remaining_fat
        remaining= 0
        if self.user.goal_fat
        remaining = self.user.goal_fat - self.total_fat
        end
        return remaining.round(2)
     end

     def user_remaining_carbs
        remaining= 0
        if self.user.goal_carbs
        remaining = self.user.goal_carbs - self.total_carbs
        end
        return remaining.round(2)
     end

     def user_remaining_protein
        remaining= 0
        if self.user.goal_protein
        remaining = self.user.goal_protein - self.total_protein
        end
        return remaining.round(2)
     end

     def user_remaining_sugar
        remaining= 0
        if self.user.goal_sugar
        remaining = self.user.goal_sugar - self.total_sugar
        end
        return remaining.round(2)
     end

    def changed_date
        splitted_date = self.date.to_s.split('-')
        new_date= ""

        month = splitted_date.second
        year = splitted_date.first 
        day = splitted_date.last
        
        if day[0]== "0"
            day = day.split('').pop
        else 
           day = day
        end
        return new_date = month + "/" + day + "/" + year
    end


end
