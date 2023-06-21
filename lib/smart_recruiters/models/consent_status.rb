

require 'date'

module SmartRecruiters
  class ConsentStatus
    REQUIRED = 'REQUIRED'.freeze
    PENDING = 'PENDING'.freeze
    ACQUIRED = 'ACQUIRED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ConsentStatus.constants.select { |c| ConsentStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ConsentStatus" if constantValues.empty?
      value
    end
  end
end
