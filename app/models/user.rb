# # /app/models/user.erb
# require './lib/recommendation.rb'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
         
         validate  :password_complexity
  
          def password_complexity
            # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
            return if encrypted_password.blank? || encrypted_password =~ /(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/
        
            errors.add :encrypted_password, 'Complexity requirement not met. Length should be 8-70 characters and include: 1 uppercase, 1 lowercase, 1 digit and 1 special character'
          end
               

         has_one :profile
         has_many :meal_plans
         

         has_many :likes, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :recipes, dependent: :destroy


         has_many :notifications, dependent: :destroy
         has_many :notifylikes, dependent: :destroy
        
<<<<<<< HEAD
         
=======
<<<<<<< HEAD

        
=======
>>>>>>> 901831a8944c8f704bb0f9ba17b437da9e77e1f4
           def recipe_options
              @recipe=Recipe.all
              @recipe.map do |recipe|
              [recipe.name, recipe.id]
              end
        end
>>>>>>> 97cc4102a68f494c5eb2cfe26461f9f43489b447

end
