

require 'date'

module SmartRecruiters
  class ConsentScope
    SINGLE = 'Single'.freeze
    SMART_RECRUIT = 'SmartRecruit'.freeze
    SMART_CRM = 'SmartCRM'.freeze
    SMART_MESSAGESMS = 'SmartMessage:SMS'.freeze
    SMART_MESSAGEWHATS_APP = 'SmartMessage:WhatsApp'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ConsentScope.constants.select { |c| ConsentScope::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ConsentScope" if constantValues.empty?
      value
    end
  end
end
