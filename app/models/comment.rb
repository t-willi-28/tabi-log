class Comment < ApplicationRecord
  belongs_to :log
  belongs_to :user

  validates :text, presence: true
end
