CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJATC3NFPNG2KHO3A',       # required
    :aws_secret_access_key  => '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',       # required

  }
  config.fog_directory  = 'songbucket'                     # required
  config.fog_public     = false                                   # optional, defaults to true

end