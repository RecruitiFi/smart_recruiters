# Common files
require 'smart_recruiters/api_client'
require 'smart_recruiters/api_error'
require 'smart_recruiters/version'
require 'smart_recruiters/configuration'
require 'smart_recruiters/authorization'

# Models
Dir[File.join(__dir__, 'smart_recruiters/models', '*.rb')].each { |file| require file }

# APIs
Dir[File.join(__dir__, 'smart_recruiters/api', '*.rb')].each { |file| require file }

module SmartRecruiters
  class << self
    # Customize default settings for the SDK using block.
    #   SmartRecruiters.configure do |config|
    #     config.client_id = "xxx"
    #     config.client_secret = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
