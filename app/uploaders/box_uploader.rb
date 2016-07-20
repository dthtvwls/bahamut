class BoxUploader < CarrierWave::Uploader::Base
  include CarrierWaveDirect::Uploader

  def store_dir
    "#{model.version.box.user.name}/boxes/#{model.version.box.name}/versions/#{model.version.version}/providers"
  end

  def filename
    "#{model.name}.box"
  end

  def key
    "#{store_dir}/#{filename}"
  end
end
