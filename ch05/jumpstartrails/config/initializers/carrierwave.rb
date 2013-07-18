CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider	          => 'AWS',
    :aws_access_key_id    => 'AKIAIOBFRAI7M6PQGEOQ',
    :aws_secret_access_key => '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' 
  }
  config.fog_directory = 'jumpstartrails_geg'
  config.fog_public    = false
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end
