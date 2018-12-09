# # /app/models/user.erb
# require './lib/recommendation.rb'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :profile
         has_many :meal_plans
         

         has_many :likes, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :recipes, dependent: :destroy


         has_many :notifications, dependent: :destroy
         has_many :notifylikes, dependent: :destroy
        
<<<<<<< HEAD

        
=======
           def recipe_options
              @recipe=Recipe.all
              @recipe.map do |recipe|
              [recipe.name, recipe.id]
              end
        end
>>>>>>> 97cc4102a68f494c5eb2cfe26461f9f43489b447

end
