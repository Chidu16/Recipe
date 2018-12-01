class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :profile
         has_many :meal_plans
         
         def recipe_options
           recipes.map do |recipe|
          [recipe.name, recipe.id]
        end
    end
end
