class Notification < ApplicationRecord
  belongs_to :User
  belongs_to :Comment
end
