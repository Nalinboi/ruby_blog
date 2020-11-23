class Article < ApplicationRecord
    has_many :comments, dependent: :nullify
    belongs_to :user
    validates :title, presence: true,
                      length: { minimum: 5 }

end