

require 'date'

module SmartRecruiters
  class AttendeeStatusValue
    ACCEPTED = 'accepted'.freeze
    DECLINED = 'declined'.freeze
    PENDING = 'pending'.freeze
    TENTATIVE = 'tentative'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AttendeeStatusValue.constants.select { |c| AttendeeStatusValue::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AttendeeStatusValue" if constantValues.empty?
      value
    end
  end
end
