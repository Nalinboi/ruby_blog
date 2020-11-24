class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  # validates :user, presence: true,
  # validates :body, presence: true,
  #                     length: { minimum: 3 }                      

  def author(return_id: false)
    return "N/A" unless user_id.present?
    return_id ? user_id : user.name
  end
end
