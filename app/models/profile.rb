class Profile < ApplicationRecord
    
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :address, presence: true
    
  belongs_to :user
end
