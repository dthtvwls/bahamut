class BoxUploader < CarrierWave::Uploader::Base
  include CarrierWaveDirect::Uploader

  def store_dir
    "#{model.version.box.user.name}/boxes/#{model.version.box.name}/versions/#{model.version.version}/providers"
  end

  def key
    "#{store_dir}/#{model.name}.box"
  end
end
