

require 'date'

module SmartRecruiters
  class JobStatus
    CREATED = 'CREATED'.freeze
    SOURCING = 'SOURCING'.freeze
    FILLED = 'FILLED'.freeze
    INTERVIEW = 'INTERVIEW'.freeze
    OFFER = 'OFFER'.freeze
    CANCELLED = 'CANCELLED'.freeze
    ON_HOLD = 'ON_HOLD'.freeze
    OTHER = 'OTHER'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = JobStatus.constants.select { |c| JobStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #JobStatus" if constantValues.empty?
      value
    end
  end
end
