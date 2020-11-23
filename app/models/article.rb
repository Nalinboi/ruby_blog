class Article < ApplicationRecord
    has_many :comments, dependent: :nullify
    belongs_to :user
    validates :title, presence: true,
                      length: { minimum: 5 }

    def author(return_id: false)
        return "N/A" unless user_id.present?
        return_id ? user_id : user.name
    end

    
    # helper_method :article_author
end