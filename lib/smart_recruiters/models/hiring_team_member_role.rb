

require 'date'

module SmartRecruiters
  class HiringTeamMemberRole
    HIRING_MANAGER = 'HIRING_MANAGER'.freeze
    INTERVIEW_TEAM = 'INTERVIEW_TEAM'.freeze
    RECRUITER = 'RECRUITER'.freeze
    EXECUTIVE = 'EXECUTIVE'.freeze
    COORDINATOR = 'COORDINATOR'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = HiringTeamMemberRole.constants.select { |c| HiringTeamMemberRole::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #HiringTeamMemberRole" if constantValues.empty?
      value
    end
  end
end
