class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :profile
<<<<<<< HEAD
         has_many :meal_plans
         
         def recipe_options
           recipes.map do |recipe|
          [recipe.name, recipe.id]
        end
    end
=======
         has_many :likes, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :recipes, dependent: :destroy
>>>>>>> 5a5db98f954c3224acc9e9bd8d55f5d14ebfa3a1
end
