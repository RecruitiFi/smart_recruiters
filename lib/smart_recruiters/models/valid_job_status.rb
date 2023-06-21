

require 'date'

module SmartRecruiters
  class ValidJobStatus
    CREATED = 'CREATED'.freeze
    SOURCING = 'SOURCING'.freeze
    FILLED = 'FILLED'.freeze
    INTERVIEW = 'INTERVIEW'.freeze
    OFFER = 'OFFER'.freeze
    CANCELLED = 'CANCELLED'.freeze
    ON_HOLD = 'ON_HOLD'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ValidJobStatus.constants.select { |c| ValidJobStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ValidJobStatus" if constantValues.empty?
      value
    end
  end
end
