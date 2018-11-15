CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     '##',                        # required unless using use_iam_profile
    aws_secret_access_key: '##',                        # required unless using use_iam_profile
    region:                '##',                  # optional, defaults to 'us-east-1'
    endpoint:              '##' # optional, defaults to nil
  }
  config.fog_directory  = '##'                                      # required
 config.fog_attributes = {} # optional, defaults to {}
end
