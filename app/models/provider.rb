class Provider < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :finders

  belongs_to :version

  validates :name, presence: true, uniqueness: { scope: :version }, inclusion: { in: ['virtualbox'] }
  validates_associated :version, presence: true

  mount_uploader :url do
    storage :fog
    def store_dir
      "#{model.version.box.user.name}/boxes/#{model.version.box.name}/versions/#{model.version.version}/providers"
    end
    def filename
      "#{model.name}.box"
    end
  end
end
