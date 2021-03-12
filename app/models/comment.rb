class Comment < ApplicationRecord
  validates :text     , presence: true
  validates :user     , presence: true
  validates :prototype, presence: true

  belongs_to :prototype
  belongs_to :user
end
