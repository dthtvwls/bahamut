CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  }
  config.fog_directory = ENV['S3_BUCKET']
  config.max_file_size = 5120.megabytes # http://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html
  config.validate_filename_format = false
  config.validate_unique_filename = false
end
