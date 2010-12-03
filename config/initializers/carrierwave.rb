CarrierWave.configure do |config|
#  if Rails.env.production?
  if ENV['S3_KEY'] && ENV['S3_SECRET'] && ENV['S3_BUCKET']
    config.storage = :s3
    config.s3_access_key_id = ENV['S3_KEY']
    config.s3_secret_access_key = ENV['S3_SECRET']
    config.s3_bucket = ENV['S3_BUCKET']
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.s3_access_policy = :public_read
  elsif Rails.env.development?
    config.storage = :file
  else
    config.storage = :file
  end
end
