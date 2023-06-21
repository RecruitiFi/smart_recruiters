

require 'date'

module SmartRecruiters
  class JobApplicationStatus
    LEAD = 'LEAD'.freeze
    NEW = 'NEW'.freeze
    IN_REVIEW = 'IN_REVIEW'.freeze
    INTERVIEW = 'INTERVIEW'.freeze
    OFFERED = 'OFFERED'.freeze
    HIRED = 'HIRED'.freeze
    REJECTED = 'REJECTED'.freeze
    WITHDRAWN = 'WITHDRAWN'.freeze
    TRANSFERRED = 'TRANSFERRED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = JobApplicationStatus.constants.select { |c| JobApplicationStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #JobApplicationStatus" if constantValues.empty?
      value
    end
  end
end
