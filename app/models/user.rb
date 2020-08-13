# model files are used to setup associations 

class User < ApplicationRecord

  has_many :comments
  has_many :posts 


  validates :password, length: { minimum: 6, maximum: 40 ,message: "should be between 6 to 40 characters"  
}
    

  validates :password, presence: { message: "cannot be left blank" } 
 
  validates :password, confirmation: { message: '\'s don\'t match' }   

  validates :username, presence: { message: 'cannot be blank' }
  validates :username, uniqueness: { message: 'is already taken' } 
  validates :username, length: { minimum: 1, maximum: 18 , message: 'should be between 1 to 18 characters' }

  validates :email, format: 
    { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create , message: 'format is wrong, please lookup how to type out emails in the right format if you dont know what emails are' } 
     

  validates :email, length: { minimum: 6, maximum: 30 , message: 'should be between 6 to 18 characters' } 

  validates :email, presence: { message: 'can not be blank' }   
  validates :email, uniqueness: { message: 'already taken' }   

  def is_blank? 
    self.username == nil || self.username == '' ? true : false 
  end

end
