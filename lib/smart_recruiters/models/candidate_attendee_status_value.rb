

require 'date'

module SmartRecruiters
  class CandidateAttendeeStatusValue
    ACCEPTED = 'accepted'.freeze
    DECLINED = 'declined'.freeze
    PENDING = 'pending'.freeze
    TENTATIVE = 'tentative'.freeze
    NULL = 'null'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CandidateAttendeeStatusValue.constants.select { |c| CandidateAttendeeStatusValue::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CandidateAttendeeStatusValue" if constantValues.empty?
      value
    end
  end
end
