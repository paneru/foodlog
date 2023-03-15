class Entry < ApplicationRecord

    validates :calories, :proteins, :carb, :fats, presence: true
    validates :meal_type, presence: {message: "is missing the meal type! Eg. Breakfast, Lunch etc"}

    #validates ${:calories, :proteins, :carb, :fats, :meal_type, presence :true}

    def day
        self.created_at.strftime("%b %e, %Y")
    end
end
