class Post < ApplicationRecord
  belongs_to :user 
  has_many :comments

  validates :title , length: { minimum: 2, maximum: 30, message: 'should be atleast 2 to 30 characters long' }  

  validates :user_id , presence: true


end
