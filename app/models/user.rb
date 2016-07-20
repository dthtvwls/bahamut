class User < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :finders

  has_many :boxes, dependent: :destroy

  validates :name, presence: true, uniqueness: true, format: { with: /\A[A-Za-z0-9-]{3,}\z/ }

  default_scope { order(:name) }
end
