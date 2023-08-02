

require 'date'

module SmartRecruiters
  class JobDetails
    attr_accessor :id

    attr_accessor :title

    attr_accessor :ref_number

    attr_accessor :created_on

    # Job modification date
    attr_accessor :updated_on

    # Indicates last activity associated with a job
    attr_accessor :last_activity_on

    attr_accessor :department

    attr_accessor :location

    attr_accessor :status

    attr_accessor :posting_status

    attr_accessor :target_hiring_date

    attr_accessor :industry

    attr_accessor :function

    attr_accessor :type_of_employment

    attr_accessor :experience_level

    attr_accessor :eeo_category

    attr_accessor :template

    attr_accessor :creator

    attr_accessor :compensation

    attr_accessor :job_ad

    attr_accessor :properties

    attr_accessor :actions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'ref_number' => :'refNumber',
        :'created_on' => :'createdOn',
        :'updated_on' => :'updatedOn',
        :'last_activity_on' => :'lastActivityOn',
        :'department' => :'department',
        :'location' => :'location',
        :'status' => :'status',
        :'posting_status' => :'postingStatus',
        :'target_hiring_date' => :'targetHiringDate',
        :'industry' => :'industry',
        :'function' => :'function',
        :'type_of_employment' => :'typeOfEmployment',
        :'experience_level' => :'experienceLevel',
        :'eeo_category' => :'eeoCategory',
        :'template' => :'template',
        :'creator' => :'creator',
        :'compensation' => :'compensation',
        :'job_ad' => :'jobAd',
        :'properties' => :'properties',
        :'actions' => :'actions'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'title' => :'Object',
        :'ref_number' => :'Object',
        :'created_on' => :'Object',
        :'updated_on' => :'Object',
        :'last_activity_on' => :'Object',
        :'department' => :'Object',
        :'location' => :'Object',
        :'status' => :'Object',
        :'posting_status' => :'Object',
        :'target_hiring_date' => :'Object',
        :'industry' => :'Object',
        :'function' => :'Object',
        :'type_of_employment' => :'Object',
        :'experience_level' => :'Object',
        :'eeo_category' => :'Object',
        :'template' => :'Object',
        :'creator' => :'Object',
        :'compensation' => :'Object',
        :'job_ad' => :'Object',
        :'properties' => :'Object',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SmartRecruiters::JobDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SmartRecruiters::JobDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      # super(attributes)

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'ref_number')
        self.ref_number = attributes[:'ref_number']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'updated_on')
        self.updated_on = attributes[:'updated_on']
      end

      if attributes.key?(:'last_activity_on')
        self.last_activity_on = attributes[:'last_activity_on']
      end

      if attributes.key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'posting_status')
        self.posting_status = attributes[:'posting_status']
      end

      if attributes.key?(:'target_hiring_date')
        self.target_hiring_date = attributes[:'target_hiring_date']
      end

      if attributes.key?(:'industry')
        self.industry = attributes[:'industry']
      end

      if attributes.key?(:'function')
        self.function = attributes[:'function']
      end

      if attributes.key?(:'type_of_employment')
        self.type_of_employment = attributes[:'type_of_employment']
      end

      if attributes.key?(:'experience_level')
        self.experience_level = attributes[:'experience_level']
      end

      if attributes.key?(:'eeo_category')
        self.eeo_category = attributes[:'eeo_category']
      end

      if attributes.key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'compensation')
        self.compensation = attributes[:'compensation']
      end

      if attributes.key?(:'job_ad')
        self.job_ad = attributes[:'job_ad']
      end

      if attributes.key?(:'properties')
        if (value = attributes[:'properties']).is_a?(Array)
          self.properties = value
        end
      end

      if attributes.key?(:'actions')
        self.actions = attributes[:'actions']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
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
          title == o.title &&
          ref_number == o.ref_number &&
          created_on == o.created_on &&
          updated_on == o.updated_on &&
          last_activity_on == o.last_activity_on &&
          department == o.department &&
          location == o.location &&
          status == o.status &&
          posting_status == o.posting_status &&
          target_hiring_date == o.target_hiring_date &&
          industry == o.industry &&
          function == o.function &&
          type_of_employment == o.type_of_employment &&
          experience_level == o.experience_level &&
          eeo_category == o.eeo_category &&
          template == o.template &&
          creator == o.creator &&
          compensation == o.compensation &&
          job_ad == o.job_ad &&
          properties == o.properties &&
          actions == o.actions && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, ref_number, created_on, updated_on, last_activity_on, department, location, status, posting_status, target_hiring_date, industry, function, type_of_employment, experience_level, eeo_category, template, creator, compensation, job_ad, properties, actions].hash
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
      # super(attributes)
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
