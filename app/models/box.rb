class Box < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :finders

  belongs_to :user
  has_many :versions, dependent: :destroy

  validates :name, presence: true, uniqueness: { scope: :user }, format: { with: /\A[A-Za-z0-9-]+\z/ }
  validates_associated :user, presence: true

  after_initialize do
    self.description ||= ''
    self.short_description ||= ''
  end
end
