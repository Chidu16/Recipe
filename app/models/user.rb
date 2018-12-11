# # /app/models/user.erb
# require './lib/recommendation.rb'
#require isStrongPassword

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
         
         
         
         validates :email, :presence => true, :uniqueness => true
         validates :password, length: {minimum: 8}
         
         validate  :password_complexity 
         
         def password_complexity
            # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
            return if ! CheckStrongPassword.check(:password)
        
            errors.add :encrypted_password, 'Complexity requirement not met. Length should be 8-70 characters and include: 1 uppercase, 1 lowercase, 1 digit and 1 special character'
          end
  
          
               

         has_one :profile
         has_many :meal_plans
         

         has_many :likes, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :recipes, dependent: :destroy


         has_many :notifications, dependent: :destroy
         has_many :notifylikes, dependent: :destroy
        

           def recipe_options
              @recipe=Recipe.all
              @recipe.map do |recipe|
              [recipe.name, recipe.id]
              end
        end

end
