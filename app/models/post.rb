class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :content, length: {minimum: 100}

end

# validates :size, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }
