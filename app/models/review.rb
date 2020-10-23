class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :favorites, dependent: :destroy

  validates :score, presence: true
end
