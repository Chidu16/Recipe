class Profile < ApplicationRecord
    
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :address, presence: true
    
     validates_format_of :firstname,:lastname,:address, :with => /^[a-z]+$/i,  :multiline => true
  belongs_to :user
end
