

require 'date'

module SmartRecruiters
  class LanguageCode
    AF = 'af'.freeze
    AM = 'am'.freeze
    AR = 'ar'.freeze
    AZ = 'az'.freeze
    BG = 'bg'.freeze
    BN = 'bn'.freeze
    CA = 'ca'.freeze
    CS = 'cs'.freeze
    CY = 'cy'.freeze
    DA = 'da'.freeze
    DE = 'de'.freeze
    EL = 'el'.freeze
    EN = 'en'.freeze
    EN_GB = 'en-GB'.freeze
    ES = 'es'.freeze
    ES_MX = 'es-MX'.freeze
    ET = 'et'.freeze
    EU = 'eu'.freeze
    FA = 'fa'.freeze
    FI = 'fi'.freeze
    FIL = 'fil'.freeze
    FR = 'fr'.freeze
    FR_CA = 'fr-CA'.freeze
    GA = 'ga'.freeze
    GL = 'gl'.freeze
    GU = 'gu'.freeze
    HE = 'he'.freeze
    HI = 'hi'.freeze
    HR = 'hr'.freeze
    HU = 'hu'.freeze
    HY = 'hy'.freeze
    ID = 'id'.freeze
    IS = 'is'.freeze
    IT = 'it'.freeze
    JA = 'ja'.freeze
    KA = 'ka'.freeze
    KM = 'km'.freeze
    KN = 'kn'.freeze
    KO = 'ko'.freeze
    LO = 'lo'.freeze
    LT = 'lt'.freeze
    LV = 'lv'.freeze
    ML = 'ml'.freeze
    MN = 'mn'.freeze
    MR = 'mr'.freeze
    MS = 'ms'.freeze
    NE = 'ne'.freeze
    NL = 'nl'.freeze
    NO = 'no'.freeze
    PL = 'pl'.freeze
    PT = 'pt'.freeze
    PT_BR = 'pt-BR'.freeze
    RO = 'ro'.freeze
    RU = 'ru'.freeze
    SI = 'si'.freeze
    SK = 'sk'.freeze
    SL = 'sl'.freeze
    SR = 'sr'.freeze
    SV = 'sv'.freeze
    SW = 'sw'.freeze
    TA = 'ta'.freeze
    TE = 'te'.freeze
    TH = 'th'.freeze
    TR = 'tr'.freeze
    UK = 'uk'.freeze
    UR = 'ur'.freeze
    VI = 'vi'.freeze
    ZH_CN = 'zh-CN'.freeze
    ZH_TW = 'zh-TW'.freeze
    ZU = 'zu'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = LanguageCode.constants.select { |c| LanguageCode::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LanguageCode" if constantValues.empty?
      value
    end
  end
end
