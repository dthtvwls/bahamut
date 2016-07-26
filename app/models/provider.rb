class Provider < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :finders

  belongs_to :version

  validates :name, presence: true, uniqueness: { scope: :version }, inclusion: { in: ['virtualbox'] }
  validates_associated :version, presence: true

  default_scope { order(:name) }

  mount_uploader :box_url, BoxUploader
end
