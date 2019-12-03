class DailyIntake < ApplicationRecord
    belongs_to :user
    belongs_to :food

    def total_calories
        total= 0
        if self.food
            total = self.food.calorie * self.serving
        end
        return total.round(2)
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
