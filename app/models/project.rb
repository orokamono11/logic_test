class Project < ApplicationRecord
  is_impressionable
  paginates_per 10
  belongs_to :user
  validates :create_title, presence: true, length: { maximum: 20 }
end
