class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]

  def average_reviews
    return 'N/A' if reviews.empty?

    sum = 0.0
    reviews.each do |review|
      sum += review[:rating]
    end
    return sum / reviews.count
  end
end
