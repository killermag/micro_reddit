class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :post 

  validates :body, presence: { message: '\'s can\' be submitted blank' }  
  validates :body , length: { maximum: 10000, message: 'Comment length exceeded. max 10000' } 


end
