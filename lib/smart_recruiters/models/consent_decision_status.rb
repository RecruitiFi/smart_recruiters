

require 'date'

module SmartRecruiters
  class ConsentDecisionStatus
    ACQUIRED = 'acquired'.freeze
    DECLINED = 'declined'.freeze
    REQUIRED = 'required'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ConsentDecisionStatus.constants.select { |c| ConsentDecisionStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ConsentDecisionStatus" if constantValues.empty?
      value
    end
  end
end
