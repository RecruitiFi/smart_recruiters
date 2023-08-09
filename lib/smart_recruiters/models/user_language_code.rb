require 'date'

module SmartRecruiters
  class UserLanguageCode
    BG = 'bg'.freeze
    CS = 'cs'.freeze
    DA = 'da'.freeze
    DE = 'de'.freeze
    EL = 'el'.freeze
    EN = 'en'.freeze
    ES = 'es'.freeze
    ES_MX = 'es-MX'.freeze
    FI = 'fi'.freeze
    FR = 'fr'.freeze
    FR_CA = 'fr-CA'.freeze
    HR = 'hr'.freeze
    HU = 'hu'.freeze
    ID = 'id'.freeze
    IT = 'it'.freeze
    JA = 'ja'.freeze
    LT = 'lt'.freeze
    NL = 'nl'.freeze
    NO = 'no'.freeze
    PL = 'pl'.freeze
    PT = 'pt'.freeze
    PT_BR = 'pt-BR'.freeze
    RO = 'ro'.freeze
    RU = 'ru'.freeze
    SK = 'sk'.freeze
    SL = 'sl'.freeze
    SR = 'sr'.freeze
    SV = 'sv'.freeze
    TH = 'th'.freeze
    TR = 'tr'.freeze
    UK = 'uk'.freeze
    VI = 'vi'.freeze
    ZH_CN = 'zh-CN'.freeze
    ZH_TW = 'zh-TW'.freeze
    KA = 'ka'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = UserLanguageCode.constants.select { |c| UserLanguageCode::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #UserLanguageCode" if constantValues.empty?
      value
    end
  end
end
