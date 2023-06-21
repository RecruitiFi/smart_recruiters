

require 'date'

module SmartRecruiters
  class CandidatePropertyType
    BOOLEAN = 'BOOLEAN'.freeze
    COUNTRY = 'COUNTRY'.freeze
    CURRENCY = 'CURRENCY'.freeze
    DATE = 'DATE'.freeze
    NUMBER = 'NUMBER'.freeze
    PERCENT = 'PERCENT'.freeze
    REGION = 'REGION'.freeze
    TEXT = 'TEXT'.freeze
    USER = 'USER'.freeze
    SINGLE_SELECT = 'SINGLE_SELECT'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CandidatePropertyType.constants.select { |c| CandidatePropertyType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CandidatePropertyType" if constantValues.empty?
      value
    end
  end
end
