class Log < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates :place
    validates :description
    validates :point
    validates :image
  end
end
