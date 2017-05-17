CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJWQUM5V5DCSJFMTA',
      :aws_secret_access_key  => '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',
      :region => 'ap-south-1'
  }
  config.fog_directory  = 'helloakash'
  config.fog_public     = true
end