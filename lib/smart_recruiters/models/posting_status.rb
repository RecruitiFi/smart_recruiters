

require 'date'

module SmartRecruiters
  class PostingStatus
    PUBLIC = 'PUBLIC'.freeze
    INTERNAL = 'INTERNAL'.freeze
    NOT_PUBLISHED = 'NOT_PUBLISHED'.freeze
    PRIVATE = 'PRIVATE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PostingStatus.constants.select { |c| PostingStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PostingStatus" if constantValues.empty?
      value
    end
  end
end
