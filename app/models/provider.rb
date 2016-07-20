class Provider < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :finders

  belongs_to :version

  validates :name, presence: true, uniqueness: { scope: :version }, inclusion: { in: ['virtualbox'] }
  validates_associated :version, presence: true

  mount_uploader :box, BoxUploader
end
