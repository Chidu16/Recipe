# # /app/models/user.erb
# require './lib/recommendation.rb'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :profile
         has_many :meal_plans
         
         def recipe_options
             @recipe = Recipe.all
            @recipe.map do |recipe|
            [recipe.name, recipe.id]
            end
        end

         has_many :likes, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :recipes, dependent: :destroy


         has_many :notifications, dependent: :destroy
        

        

end
