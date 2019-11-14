class Article < ApplicationRecord
    belongs_to :user
    
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
                      length: { minimum: 5 }
    validates :user_id, presence: true

    def self.search(search)
      if search.present?
        Article.where('title LIKE ?', "%#{search}%")
      else
        Article.all
      end
    end

  end