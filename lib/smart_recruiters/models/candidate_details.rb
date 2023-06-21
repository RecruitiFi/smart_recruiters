

require 'date'

module SmartRecruiters
  class CandidateDetails
    attr_accessor :id

    attr_accessor :internal

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :email

    attr_accessor :phone_number

    attr_accessor :location

    attr_accessor :web

    attr_accessor :created_on

    attr_accessor :updated_on

    attr_accessor :tags

    attr_accessor :average_rating

    attr_accessor :education

    attr_accessor :experience

    attr_accessor :primary_assignment

    attr_accessor :secondary_assignments

    attr_accessor :actions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'internal' => :'internal',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'email' => :'email',
        :'phone_number' => :'phoneNumber',
        :'location' => :'location',
        :'web' => :'web',
        :'created_on' => :'createdOn',
        :'updated_on' => :'updatedOn',
        :'tags' => :'tags',
        :'average_rating' => :'averageRating',
        :'education' => :'education',
        :'experience' => :'experience',
        :'primary_assignment' => :'primaryAssignment',
        :'secondary_assignments' => :'secondaryAssignments',
        :'actions' => :'actions'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'internal' => :'Object',
        :'first_name' => :'Object',
        :'last_name' => :'Object',
        :'email' => :'Object',
        :'phone_number' => :'Object',
        :'location' => :'Object',
        :'web' => :'Object',
        :'created_on' => :'Object',
        :'updated_on' => :'Object',
        :'tags' => :'Object',
        :'average_rating' => :'Object',
        :'education' => :'Object',
        :'experience' => :'Object',
        :'primary_assignment' => :'Object',
        :'secondary_assignments' => :'Object',
        :'actions' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SmartRecruiters::CandidateDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SmartRecruiters::CandidateDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'internal')
        self.internal = attributes[:'internal']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'web')
        self.web = attributes[:'web']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'updated_on')
        self.updated_on = attributes[:'updated_on']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'average_rating')
        self.average_rating = attributes[:'average_rating']
      end

      if attributes.key?(:'education')
        if (value = attributes[:'education']).is_a?(Array)
          self.education = value
        end
      end

      if attributes.key?(:'experience')
        if (value = attributes[:'experience']).is_a?(Array)
          self.experience = value
        end
      end

      if attributes.key?(:'primary_assignment')
        self.primary_assignment = attributes[:'primary_assignment']
      end

      if attributes.key?(:'secondary_assignments')
        if (value = attributes[:'secondary_assignments']).is_a?(Array)
          self.secondary_assignments = value
        end
      end

      if attributes.key?(:'actions')
        self.actions = attributes[:'actions']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          internal == o.internal &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email == o.email &&
          phone_number == o.phone_number &&
          location == o.location &&
          web == o.web &&
          created_on == o.created_on &&
          updated_on == o.updated_on &&
          tags == o.tags &&
          average_rating == o.average_rating &&
          education == o.education &&
          experience == o.experience &&
          primary_assignment == o.primary_assignment &&
          secondary_assignments == o.secondary_assignments &&
          actions == o.actions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, internal, first_name, last_name, email, phone_number, location, web, created_on, updated_on, tags, average_rating, education, experience, primary_assignment, secondary_assignments, actions].hash
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
