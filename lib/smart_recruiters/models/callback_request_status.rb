

require 'date'

module SmartRecruiters
  class CallbackRequestStatus
    SUCCESSFUL = 'successful'.freeze
    FAILED = 'failed'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CallbackRequestStatus.constants.select { |c| CallbackRequestStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CallbackRequestStatus" if constantValues.empty?
      value
    end
  end
end
