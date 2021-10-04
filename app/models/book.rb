class Book < ApplicationRecord
  belongs_to :user, optional: true
  attachment :profile_image

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}

  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

 

end
