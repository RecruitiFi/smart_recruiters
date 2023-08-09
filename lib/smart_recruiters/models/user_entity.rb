require 'date'

module SmartRecruiters
  class UserEntity
    attr_accessor :email

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :system_role

    attr_accessor :external_data

    attr_accessor :sso_identifier

    # User level login mode setting. Possible values are: - SSO - user can login only through SSO - PASSWORD - user can login only by password  Notice: This setting _CAN_ be configured always, but it will be respected only if: - SSO is enabled at company level - employee level SSO configuration functionality is enabled for company
    attr_accessor :sso_login_mode

    attr_accessor :language

    attr_accessor :id

    attr_accessor :active

    attr_accessor :updated_on

    attr_accessor :location

    attr_accessor :access_groups

    attr_accessor :seats

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email' => :'email',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'system_role' => :'systemRole',
        :'external_data' => :'externalData',
        :'sso_identifier' => :'ssoIdentifier',
        :'sso_login_mode' => :'ssoLoginMode',
        :'language' => :'language',
        :'id' => :'id',
        :'active' => :'active',
        :'updated_on' => :'updatedOn',
        :'location' => :'location',
        :'access_groups' => :'accessGroups',
        :'seats' => :'seats'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email' => :'Object',
        :'first_name' => :'Object',
        :'last_name' => :'Object',
        :'system_role' => :'Object',
        :'external_data' => :'Object',
        :'sso_identifier' => :'Object',
        :'sso_login_mode' => :'Object',
        :'language' => :'Object',
        :'id' => :'Object',
        :'active' => :'Object',
        :'updated_on' => :'Object',
        :'location' => :'Object',
        :'access_groups' => :'Object',
        :'seats' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_data',
        :'sso_identifier',
        :'sso_login_mode',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SmartRecruiters::UserEntity` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SmartRecruiters::UserEntity`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'system_role')
        self.system_role = attributes[:'system_role']
      end

      if attributes.key?(:'external_data')
        self.external_data = attributes[:'external_data']
      end

      if attributes.key?(:'sso_identifier')
        self.sso_identifier = attributes[:'sso_identifier']
      end

      if attributes.key?(:'sso_login_mode')
        self.sso_login_mode = attributes[:'sso_login_mode']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'updated_on')
        self.updated_on = attributes[:'updated_on']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'access_groups')
        if (value = attributes[:'access_groups']).is_a?(Array)
          self.access_groups = value
        end
      end

      if attributes.key?(:'seats')
        self.seats = attributes[:'seats']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @system_role.nil?
        invalid_properties.push('invalid value for "system_role", system_role cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @system_role.nil?
      sso_login_mode_validator = EnumAttributeValidator.new('', ['SSO', 'PASSWORD'])
      return false unless sso_login_mode_validator.valid?(@sso_login_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sso_login_mode Object to be assigned
    def sso_login_mode=(sso_login_mode)
      validator = EnumAttributeValidator.new('', ['SSO', 'PASSWORD'])
      unless validator.valid?(sso_login_mode)
        fail ArgumentError, "invalid value for \"sso_login_mode\", must be one of #{validator.allowable_values}."
      end
      @sso_login_mode = sso_login_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          system_role == o.system_role &&
          external_data == o.external_data &&
          sso_identifier == o.sso_identifier &&
          sso_login_mode == o.sso_login_mode &&
          language == o.language &&
          id == o.id &&
          active == o.active &&
          updated_on == o.updated_on &&
          location == o.location &&
          access_groups == o.access_groups &&
          seats == o.seats
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email, first_name, last_name, system_role, external_data, sso_identifier, sso_login_mode, language, id, active, updated_on, location, access_groups, seats].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        SmartRecruiters.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
