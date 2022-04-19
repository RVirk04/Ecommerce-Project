# CarrierWave.configure do |config|
# config.fog_credentials = {
#
#     :provider                         => 'Google',
#     :google_storage_access_key_id     => Rails.application.secrets.google_storage_access_key_id,
#     :google_storage_secret_access_key => Rails.application.secrets.google_storage_secret_access_key
#
#     }
#
#     config.fog_directory = Rails.application.secrets.google_bucket
# end

CarrierWave.configure do |config|
  config.storage :file
  config.asset_host = "http://localhost:3000"
end
