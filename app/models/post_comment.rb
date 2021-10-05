class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :comment, presence: true
   has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end


end
