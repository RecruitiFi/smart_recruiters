

require 'date'

module SmartRecruiters
  class Visibility
    PRIVATE = 'PRIVATE'.freeze
    DIRECT = 'DIRECT'.freeze
    OPEN = 'OPEN'.freeze
    EVERYONE = 'EVERYONE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = Visibility.constants.select { |c| Visibility::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Visibility" if constantValues.empty?
      value
    end
  end
end
