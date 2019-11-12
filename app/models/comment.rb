class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates :user_id, presence: true
end
