# Common files
require 'smart_recruiters/api_client'
require 'smart_recruiters/api_error'
require 'smart_recruiters/version'
require 'smart_recruiters/configuration'
require 'smart_recruiters/authorization'

# Models
require 'smart_recruiters/models/answer_record'
require 'smart_recruiters/models/application_status_info'
require 'smart_recruiters/models/apply_api_error'
require 'smart_recruiters/models/apply_api_request'
require 'smart_recruiters/models/apply_api_response'
require 'smart_recruiters/models/apply_configuration'
require 'smart_recruiters/models/apply_settings'
require 'smart_recruiters/models/attachment'
require 'smart_recruiters/models/education'
require 'smart_recruiters/models/employment'
require 'smart_recruiters/models/field_value'
require 'smart_recruiters/models/location'
require 'smart_recruiters/models/privacy_policy'
require 'smart_recruiters/models/screening_question'
require 'smart_recruiters/models/screening_question_answer'
require 'smart_recruiters/models/screening_question_field'
require 'smart_recruiters/models/source_details'
require 'smart_recruiters/models/web'

# APIs
require 'smart_recruiters/api/application_api'

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
