class Comment < ApplicationRecord
  validates :opinion, length: { minimum: 4 }, allow_blank: true
  belongs_to :post
end
