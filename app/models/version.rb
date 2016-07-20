class Version < ApplicationRecord
  extend FriendlyId
  friendly_id :version, use: :finders

  belongs_to :box
  has_many :providers, dependent: :destroy

  validates :version, presence: true, uniqueness: { scope: :box }, format: { with: /\A\d+\.\d+\.\d+\z/ }
  validates_associated :box, presence: true
end
