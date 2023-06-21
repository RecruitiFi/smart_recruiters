module SmartRecruiters
  class ConfigurationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a list of available candidate properties
    # Get all candidate properties and their configuration for a company
    # @param [Hash] opts the optional parameters
    # @return [CandidatePropertyDefinitionList]
    def configuration_candidate_properties_all(opts = {})
      data, _status_code, _headers = configuration_candidate_properties_all_with_http_info(opts)
      data
    end

    # Get a list of available candidate properties
    # Get all candidate properties and their configuration for a company
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidatePropertyDefinitionList, Integer, Hash)>] CandidatePropertyDefinitionList data, response status code and response headers
    def configuration_candidate_properties_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_candidate_properties_all ...'
      end
      # resource path
      local_var_path = '/configuration/candidate-properties'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidatePropertyDefinitionList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_candidate_properties_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate property by id
    # Get candidate property details and its configuration by id.
    # @param id candidate property identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidatePropertyDefinition]
    def configuration_candidate_properties_get(id, opts = {})
      data, _status_code, _headers = configuration_candidate_properties_get_with_http_info(id, opts)
      data
    end

    # Get candidate property by id
    # Get candidate property details and its configuration by id.
    # @param id candidate property identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidatePropertyDefinition, Integer, Hash)>] CandidatePropertyDefinition data, response status code and response headers
    def configuration_candidate_properties_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_candidate_properties_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_candidate_properties_get"
      end
      # resource path
      local_var_path = '/configuration/candidate-properties/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidatePropertyDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_candidate_properties_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Candidate Property values
    # Lists all available values for given candidate property id. This endpoint is available only for SINGLE_SELECT candidate property type.
    # @param id candidate property identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidatePropertyValueList]
    def configuration_candidate_properties_values_all(id, opts = {})
      data, _status_code, _headers = configuration_candidate_properties_values_all_with_http_info(id, opts)
      data
    end

    # Get Candidate Property values
    # Lists all available values for given candidate property id. This endpoint is available only for SINGLE_SELECT candidate property type.
    # @param id candidate property identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidatePropertyValueList, Integer, Hash)>] CandidatePropertyValueList data, response status code and response headers
    def configuration_candidate_properties_values_all_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_candidate_properties_values_all ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_candidate_properties_values_all"
      end
      # resource path
      local_var_path = '/configuration/candidate-properties/{id}/values'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidatePropertyValueList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_candidate_properties_values_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create candidate property value
    # Create SINGLE_SELECT candidate property value
    # @param body Candidate property value.
    # @param id candidate property identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidatePropertyValue]
    def configuration_candidate_properties_values_create(body, id, opts = {})
      data, _status_code, _headers = configuration_candidate_properties_values_create_with_http_info(body, id, opts)
      data
    end

    # Create candidate property value
    # Create SINGLE_SELECT candidate property value
    # @param body Candidate property value.
    # @param id candidate property identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidatePropertyValue, Integer, Hash)>] CandidatePropertyValue data, response status code and response headers
    def configuration_candidate_properties_values_create_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_candidate_properties_values_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConfigurationApi.configuration_candidate_properties_values_create"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_candidate_properties_values_create"
      end
      # resource path
      local_var_path = '/configuration/candidate-properties/{id}/values'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CandidatePropertyValue' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_candidate_properties_values_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove candidate property value
    # Remove candidate property value label
    # @param id candidate property identifier
    # @param value_id candidate property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_candidate_properties_values_delete(id, value_id, opts = {})
      configuration_candidate_properties_values_delete_with_http_info(id, value_id, opts)
      nil
    end

    # Remove candidate property value
    # Remove candidate property value label
    # @param id candidate property identifier
    # @param value_id candidate property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_candidate_properties_values_delete_with_http_info(id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_candidate_properties_values_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_candidate_properties_values_delete"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_candidate_properties_values_delete"
      end
      # resource path
      local_var_path = '/configuration/candidate-properties/{id}/values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_candidate_properties_values_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Candidate Property value by id
    # Get Candidate Property value by its id.
    # @param id candidate property identifier
    # @param value_id candidate property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidatePropertyValue]
    def configuration_candidate_properties_values_get(id, value_id, opts = {})
      data, _status_code, _headers = configuration_candidate_properties_values_get_with_http_info(id, value_id, opts)
      data
    end

    # Get Candidate Property value by id
    # Get Candidate Property value by its id.
    # @param id candidate property identifier
    # @param value_id candidate property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidatePropertyValue, Integer, Hash)>] CandidatePropertyValue data, response status code and response headers
    def configuration_candidate_properties_values_get_with_http_info(id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_candidate_properties_values_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_candidate_properties_values_get"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_candidate_properties_values_get"
      end
      # resource path
      local_var_path = '/configuration/candidate-properties/{id}/values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidatePropertyValue' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_candidate_properties_values_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update candidate property value label
    # Update candidate property value label
    # @param body Candidate property value label.
    # @param id candidate property identifier
    # @param value_id candidate property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidatePropertyValue]
    def configuration_candidate_properties_values_update(body, id, value_id, opts = {})
      data, _status_code, _headers = configuration_candidate_properties_values_update_with_http_info(body, id, value_id, opts)
      data
    end

    # Update candidate property value label
    # Update candidate property value label
    # @param body Candidate property value label.
    # @param id candidate property identifier
    # @param value_id candidate property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidatePropertyValue, Integer, Hash)>] CandidatePropertyValue data, response status code and response headers
    def configuration_candidate_properties_values_update_with_http_info(body, id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_candidate_properties_values_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConfigurationApi.configuration_candidate_properties_values_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_candidate_properties_values_update"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_candidate_properties_values_update"
      end
      # resource path
      local_var_path = '/configuration/candidate-properties/{id}/values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CandidatePropertyValue' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_candidate_properties_values_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get company information
    # Get all information about your company.
    # @param [Hash] opts the optional parameters
    # @return [CompanyConfiguration]
    def configuration_company_my(opts = {})
      data, _status_code, _headers = configuration_company_my_with_http_info(opts)
      data
    end

    # Get company information
    # Get all information about your company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyConfiguration, Integer, Hash)>] CompanyConfiguration data, response status code and response headers
    def configuration_company_my_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_company_my ...'
      end
      # resource path
      local_var_path = '/configuration/company'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CompanyConfiguration' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_company_my\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get departments
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Departments]
    def configuration_department_all(opts = {})
      data, _status_code, _headers = configuration_department_all_with_http_info(opts)
      data
    end

    # Get departments
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Array<(Departments, Integer, Hash)>] Departments data, response status code and response headers
    def configuration_department_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_department_all ...'
      end
      # resource path
      local_var_path = '/configuration/departments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Departments' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_department_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates department
    # @param body department to be created
    # @param [Hash] opts the optional parameters
    # @return [Department]
    def configuration_department_create(body, opts = {})
      data, _status_code, _headers = configuration_department_create_with_http_info(body, opts)
      data
    end

    # Creates department
    # @param body department to be created
    # @param [Hash] opts the optional parameters
    # @return [Array<(Department, Integer, Hash)>] Department data, response status code and response headers
    def configuration_department_create_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_department_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConfigurationApi.configuration_department_create"
      end
      # resource path
      local_var_path = '/configuration/departments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'Department' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_department_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get department
    # @param id Identifier of a department
    # @param [Hash] opts the optional parameters
    # @return [Department]
    def configuration_department_get(id, opts = {})
      data, _status_code, _headers = configuration_department_get_with_http_info(id, opts)
      data
    end

    # Get department
    # @param id Identifier of a department
    # @param [Hash] opts the optional parameters
    # @return [Array<(Department, Integer, Hash)>] Department data, response status code and response headers
    def configuration_department_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_department_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_department_get"
      end
      # resource path
      local_var_path = '/configuration/departments/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Department' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_department_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list of hiring process
    # @param [Hash] opts the optional parameters
    # @return [HiringProcesses]
    def configuration_hiring_process_all(opts = {})
      data, _status_code, _headers = configuration_hiring_process_all_with_http_info(opts)
      data
    end

    # Get list of hiring process
    # @param [Hash] opts the optional parameters
    # @return [Array<(HiringProcesses, Integer, Hash)>] HiringProcesses data, response status code and response headers
    def configuration_hiring_process_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_hiring_process_all ...'
      end
      # resource path
      local_var_path = '/configuration/hiring-processes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'HiringProcesses' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_hiring_process_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get hiring process
    # @param id Identifier of a hiring process
    # @param [Hash] opts the optional parameters
    # @return [HiringProcess]
    def configuration_hiring_process_get(id, opts = {})
      data, _status_code, _headers = configuration_hiring_process_get_with_http_info(id, opts)
      data
    end

    # Get hiring process
    # @param id Identifier of a hiring process
    # @param [Hash] opts the optional parameters
    # @return [Array<(HiringProcess, Integer, Hash)>] HiringProcess data, response status code and response headers
    def configuration_hiring_process_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_hiring_process_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_hiring_process_get"
      end
      # resource path
      local_var_path = '/configuration/hiring-processes/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'HiringProcess' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_hiring_process_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Activate a job property
    # Activates a job property with given id.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_activate(id, opts = {})
      configuration_job_properties_activate_with_http_info(id, opts)
      nil
    end

    # Activate a job property
    # Activates a job property with given id.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_activate_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_activate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_activate"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/activation'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_activate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of available job properties
    # Get a list of available job properties.
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [JobPropertyDefinitionList]
    def configuration_job_properties_all(opts = {})
      data, _status_code, _headers = configuration_job_properties_all_with_http_info(opts)
      data
    end

    # Get a list of available job properties
    # Get a list of available job properties.
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Array<(JobPropertyDefinitionList, Integer, Hash)>] JobPropertyDefinitionList data, response status code and response headers
    def configuration_job_properties_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_all ...'
      end
      # resource path
      local_var_path = '/configuration/job-properties'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'JobPropertyDefinitionList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a job property
    # Creates a job property
    # @param [Hash] opts the optional parameters
    # @option opts [JobPropertyDefinitionCreationRequest] :body job property to be created
    # @return [JobPropertyDefinition]
    def configuration_job_properties_create(opts = {})
      data, _status_code, _headers = configuration_job_properties_create_with_http_info(opts)
      data
    end

    # Create a job property
    # Creates a job property
    # @param [Hash] opts the optional parameters
    # @option opts [JobPropertyDefinitionCreationRequest] :body job property to be created
    # @return [Array<(JobPropertyDefinition, Integer, Hash)>] JobPropertyDefinition data, response status code and response headers
    def configuration_job_properties_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_create ...'
      end
      # resource path
      local_var_path = '/configuration/job-properties'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'JobPropertyDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deactivate a job property
    # Deactivates a job property.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_deactivate(id, opts = {})
      configuration_job_properties_deactivate_with_http_info(id, opts)
      nil
    end

    # Deactivate a job property
    # Deactivates a job property.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_deactivate_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_deactivate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_deactivate"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/activation'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_deactivate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get job property's dependents
    # Get list of job property's dependents
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [DependentJobProperties]
    def configuration_job_properties_dependents_all(id, opts = {})
      data, _status_code, _headers = configuration_job_properties_dependents_all_with_http_info(id, opts)
      data
    end

    # Get job property&#x27;s dependents
    # Get list of job property&#x27;s dependents
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Array<(DependentJobProperties, Integer, Hash)>] DependentJobProperties data, response status code and response headers
    def configuration_job_properties_dependents_all_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_dependents_all ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_dependents_all"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/dependents'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'DependentJobProperties' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_dependents_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create job property dependents
    # Create dependencies between job properties
    # @param body Job properties&#x27; id
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [DependentJobProperties]
    def configuration_job_properties_dependents_create(body, id, opts = {})
      data, _status_code, _headers = configuration_job_properties_dependents_create_with_http_info(body, id, opts)
      data
    end

    # Create job property dependents
    # Create dependencies between job properties
    # @param body Job properties&#x27; id
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(DependentJobProperties, Integer, Hash)>] DependentJobProperties data, response status code and response headers
    def configuration_job_properties_dependents_create_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_dependents_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConfigurationApi.configuration_job_properties_dependents_create"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_dependents_create"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/dependents'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'DependentJobProperties' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_dependents_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove job property's dependent
    # Remove dependency between job properties
    # @param id job property identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_dependents_remove(id, dependent_id, opts = {})
      configuration_job_properties_dependents_remove_with_http_info(id, dependent_id, opts)
      nil
    end

    # Remove job property&#x27;s dependent
    # Remove dependency between job properties
    # @param id job property identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_dependents_remove_with_http_info(id, dependent_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_dependents_remove ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_dependents_remove"
      end
      # verify the required parameter 'dependent_id' is set
      if @api_client.config.client_side_validation && dependent_id.nil?
        fail ArgumentError, "Missing the required parameter 'dependent_id' when calling ConfigurationApi.configuration_job_properties_dependents_remove"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/dependents/{dependentId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'dependentId' + '}', dependent_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_dependents_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add job property's dependent value
    # Add job property's dependent value for specific job property's value
    # @param body Identifier of job property&#x27;s dependent value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_dependents_values_add(body, id, value_id, dependent_id, opts = {})
      configuration_job_properties_dependents_values_add_with_http_info(body, id, value_id, dependent_id, opts)
      nil
    end

    # Add job property&#x27;s dependent value
    # Add job property&#x27;s dependent value for specific job property&#x27;s value
    # @param body Identifier of job property&#x27;s dependent value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_dependents_values_add_with_http_info(body, id, value_id, dependent_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_dependents_values_add ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConfigurationApi.configuration_job_properties_dependents_values_add"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_dependents_values_add"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_add"
      end
      # verify the required parameter 'dependent_id' is set
      if @api_client.config.client_side_validation && dependent_id.nil?
        fail ArgumentError, "Missing the required parameter 'dependent_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_add"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values/{valueId}/dependents/{dependentId}/values'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s).sub('{' + 'dependentId' + '}', dependent_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_dependents_values_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get dependent job property's values
    # Get dependent job property's values with corelation to the parent field.
    # @param id job property identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [DependentJobPropertyValuesRelations]
    def configuration_job_properties_dependents_values_all(id, dependent_id, opts = {})
      data, _status_code, _headers = configuration_job_properties_dependents_values_all_with_http_info(id, dependent_id, opts)
      data
    end

    # Get dependent job property&#x27;s values
    # Get dependent job property&#x27;s values with corelation to the parent field.
    # @param id job property identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Array<(DependentJobPropertyValuesRelations, Integer, Hash)>] DependentJobPropertyValuesRelations data, response status code and response headers
    def configuration_job_properties_dependents_values_all_with_http_info(id, dependent_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_dependents_values_all ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_dependents_values_all"
      end
      # verify the required parameter 'dependent_id' is set
      if @api_client.config.client_side_validation && dependent_id.nil?
        fail ArgumentError, "Missing the required parameter 'dependent_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_all"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/dependents/{dependentId}/values'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'dependentId' + '}', dependent_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'DependentJobPropertyValuesRelations' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_dependents_values_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get job property's dependent values
    # Get list of job property's dependent values for specific job property's value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [DependentJobPropertyValues]
    def configuration_job_properties_dependents_values_get(id, value_id, dependent_id, opts = {})
      data, _status_code, _headers = configuration_job_properties_dependents_values_get_with_http_info(id, value_id, dependent_id, opts)
      data
    end

    # Get job property&#x27;s dependent values
    # Get list of job property&#x27;s dependent values for specific job property&#x27;s value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Array<(DependentJobPropertyValues, Integer, Hash)>] DependentJobPropertyValues data, response status code and response headers
    def configuration_job_properties_dependents_values_get_with_http_info(id, value_id, dependent_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_dependents_values_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_dependents_values_get"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_get"
      end
      # verify the required parameter 'dependent_id' is set
      if @api_client.config.client_side_validation && dependent_id.nil?
        fail ArgumentError, "Missing the required parameter 'dependent_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_get"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values/{valueId}/dependents/{dependentId}/values'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s).sub('{' + 'dependentId' + '}', dependent_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'DependentJobPropertyValues' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_dependents_values_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove job property's dependent values relationship
    # Remove relationship between dependent job properties values
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param dependent_value_id job property&#x27;s dependent value identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_dependents_values_remove(id, value_id, dependent_id, dependent_value_id, opts = {})
      configuration_job_properties_dependents_values_remove_with_http_info(id, value_id, dependent_id, dependent_value_id, opts)
      nil
    end

    # Remove job property&#x27;s dependent values relationship
    # Remove relationship between dependent job properties values
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param dependent_id job property&#x27;s dependent identifier
    # @param dependent_value_id job property&#x27;s dependent value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_dependents_values_remove_with_http_info(id, value_id, dependent_id, dependent_value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_dependents_values_remove ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_dependents_values_remove"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_remove"
      end
      # verify the required parameter 'dependent_id' is set
      if @api_client.config.client_side_validation && dependent_id.nil?
        fail ArgumentError, "Missing the required parameter 'dependent_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_remove"
      end
      # verify the required parameter 'dependent_value_id' is set
      if @api_client.config.client_side_validation && dependent_value_id.nil?
        fail ArgumentError, "Missing the required parameter 'dependent_value_id' when calling ConfigurationApi.configuration_job_properties_dependents_values_remove"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values/{valueId}/dependents/{dependentId}/values/{dependentValueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s).sub('{' + 'dependentId' + '}', dependent_id.to_s).sub('{' + 'dependentValueId' + '}', dependent_value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_dependents_values_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get job property by id
    # Get job property by id
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [JobPropertyDefinition]
    def configuration_job_properties_get(id, opts = {})
      data, _status_code, _headers = configuration_job_properties_get_with_http_info(id, opts)
      data
    end

    # Get job property by id
    # Get job property by id
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Array<(JobPropertyDefinition, Integer, Hash)>] JobPropertyDefinition data, response status code and response headers
    def configuration_job_properties_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_get"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'JobPropertyDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a job property's translations
    # Submit a job property's translations to different languages
    # @param body 
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_translations_patch(body, id, opts = {})
      configuration_job_properties_translations_patch_with_http_info(body, id, opts)
      nil
    end

    # Add a job property&#x27;s translations
    # Submit a job property&#x27;s translations to different languages
    # @param body 
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_translations_patch_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_translations_patch ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConfigurationApi.configuration_job_properties_translations_patch"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_translations_patch"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/translations'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_translations_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a job property
    # Updates a job property.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :body patch request
    # @return [JobPropertyDefinition]
    def configuration_job_properties_update(id, opts = {})
      data, _status_code, _headers = configuration_job_properties_update_with_http_info(id, opts)
      data
    end

    # Update a job property
    # Updates a job property.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :body patch request
    # @return [Array<(JobPropertyDefinition, Integer, Hash)>] JobPropertyDefinition data, response status code and response headers
    def configuration_job_properties_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_update"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'JobPropertyDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Archive a job property value
    # Archive a job property value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_values_archive(id, value_id, opts = {})
      configuration_job_properties_values_archive_with_http_info(id, value_id, opts)
      nil
    end

    # Archive a job property value
    # Archive a job property value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_values_archive_with_http_info(id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_archive ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_archive"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_values_archive"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/archive-values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a job property value
    # Creates a job property value.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [JobPropertyValueDefinition] :body job property object to be created
    # @return [JobPropertyValueDefinition]
    def configuration_job_properties_values_create(id, opts = {})
      data, _status_code, _headers = configuration_job_properties_values_create_with_http_info(id, opts)
      data
    end

    # Create a job property value
    # Creates a job property value.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [JobPropertyValueDefinition] :body job property object to be created
    # @return [Array<(JobPropertyValueDefinition, Integer, Hash)>] JobPropertyValueDefinition data, response status code and response headers
    def configuration_job_properties_values_create_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_create ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_create"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'JobPropertyValueDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Archive a job property value
    # Archive a job property value. Please use `PUT /configuration/job-properties/{id}/archive-values/{valueId}` instead.
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_values_deprecated_archive(id, value_id, opts = {})
      configuration_job_properties_values_deprecated_archive_with_http_info(id, value_id, opts)
      nil
    end

    # Archive a job property value
    # Archive a job property value. Please use &#x60;PUT /configuration/job-properties/{id}/archive-values/{valueId}&#x60; instead.
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_values_deprecated_archive_with_http_info(id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_deprecated_archive ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_deprecated_archive"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_values_deprecated_archive"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_deprecated_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unarchive a job property value
    # Unarchive a job property value. `DELETE /configuration/job-properties/{id}/archive-values/{valueId}` instead.
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_values_deprecated_unarchive(id, value_id, opts = {})
      configuration_job_properties_values_deprecated_unarchive_with_http_info(id, value_id, opts)
      nil
    end

    # Unarchive a job property value
    # Unarchive a job property value. &#x60;DELETE /configuration/job-properties/{id}/archive-values/{valueId}&#x60; instead.
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_values_deprecated_unarchive_with_http_info(id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_deprecated_unarchive ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_deprecated_unarchive"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_values_deprecated_unarchive"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_deprecated_unarchive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get available job property values
    # Get available job property values.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [JobPropertyValueDefinitionList]
    def configuration_job_properties_values_get(id, opts = {})
      data, _status_code, _headers = configuration_job_properties_values_get_with_http_info(id, opts)
      data
    end

    # Get available job property values
    # Get available job property values.
    # @param id job property identifier
    # @param [Hash] opts the optional parameters
    # @option opts [LanguageCode] :accept_language language of returned content
    # @return [Array<(JobPropertyValueDefinitionList, Integer, Hash)>] JobPropertyValueDefinitionList data, response status code and response headers
    def configuration_job_properties_values_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_get"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'JobPropertyValueDefinitionList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a job property value's translations
    # Submit a job property value's translations to different languages
    # @param body 
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_values_translations_patch(body, id, value_id, opts = {})
      configuration_job_properties_values_translations_patch_with_http_info(body, id, value_id, opts)
      nil
    end

    # Add a job property value&#x27;s translations
    # Submit a job property value&#x27;s translations to different languages
    # @param body 
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_values_translations_patch_with_http_info(body, id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_translations_patch ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConfigurationApi.configuration_job_properties_values_translations_patch"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_translations_patch"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_values_translations_patch"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values/{valueId}/translations'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_translations_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unarchive a job property value
    # Unarchive a job property value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def configuration_job_properties_values_unarchive(id, value_id, opts = {})
      configuration_job_properties_values_unarchive_with_http_info(id, value_id, opts)
      nil
    end

    # Unarchive a job property value
    # Unarchive a job property value
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configuration_job_properties_values_unarchive_with_http_info(id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_unarchive ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_unarchive"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_values_unarchive"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/archive-values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_unarchive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a job property value
    # Update a job property value. Returns an updated job property value object.
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :body patch request
    # @return [JobPropertyValueDefinition]
    def configuration_job_properties_values_update(id, value_id, opts = {})
      data, _status_code, _headers = configuration_job_properties_values_update_with_http_info(id, value_id, opts)
      data
    end

    # Update a job property value
    # Update a job property value. Returns an updated job property value object.
    # @param id job property identifier
    # @param value_id job property&#x27;s value identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :body patch request
    # @return [Array<(JobPropertyValueDefinition, Integer, Hash)>] JobPropertyValueDefinition data, response status code and response headers
    def configuration_job_properties_values_update_with_http_info(id, value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_job_properties_values_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationApi.configuration_job_properties_values_update"
      end
      # verify the required parameter 'value_id' is set
      if @api_client.config.client_side_validation && value_id.nil?
        fail ArgumentError, "Missing the required parameter 'value_id' when calling ConfigurationApi.configuration_job_properties_values_update"
      end
      # resource path
      local_var_path = '/configuration/job-properties/{id}/values/{valueId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'valueId' + '}', value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'JobPropertyValueDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_job_properties_values_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of available offer properties
    # Get a list of available offer properties.
    # @param [Hash] opts the optional parameters
    # @return [OfferPropertiesDefinition]
    def configuration_offer_properties_all(opts = {})
      data, _status_code, _headers = configuration_offer_properties_all_with_http_info(opts)
      data
    end

    # Get a list of available offer properties
    # Get a list of available offer properties.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OfferPropertiesDefinition, Integer, Hash)>] OfferPropertiesDefinition data, response status code and response headers
    def configuration_offer_properties_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_offer_properties_all ...'
      end
      # resource path
      local_var_path = '/configuration/offer-properties'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'OfferPropertiesDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_offer_properties_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get rejection reasons
    # Get rejection reasons
    # @param [Hash] opts the optional parameters
    # @return [Properties]
    def configuration_reasons_rejection_all(opts = {})
      data, _status_code, _headers = configuration_reasons_rejection_all_with_http_info(opts)
      data
    end

    # Get rejection reasons
    # Get rejection reasons
    # @param [Hash] opts the optional parameters
    # @return [Array<(Properties, Integer, Hash)>] Properties data, response status code and response headers
    def configuration_reasons_rejection_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_reasons_rejection_all ...'
      end
      # resource path
      local_var_path = '/configuration/rejection-reasons'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Properties' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_reasons_rejection_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get withdrawal reasons
    # Get withdrawal reasons
    # @param [Hash] opts the optional parameters
    # @return [Properties]
    def configuration_reasons_withdrawal_all(opts = {})
      data, _status_code, _headers = configuration_reasons_withdrawal_all_with_http_info(opts)
      data
    end

    # Get withdrawal reasons
    # Get withdrawal reasons
    # @param [Hash] opts the optional parameters
    # @return [Array<(Properties, Integer, Hash)>] Properties data, response status code and response headers
    def configuration_reasons_withdrawal_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_reasons_withdrawal_all ...'
      end
      # resource path
      local_var_path = '/configuration/withdrawal-reasons'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Properties' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_reasons_withdrawal_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List candidate source types with subtypes
    # Get a list of all available candidate source type with subtypes
    # @param [Hash] opts the optional parameters
    # @return [SourceTypes]
    def configuration_source_types(opts = {})
      data, _status_code, _headers = configuration_source_types_with_http_info(opts)
      data
    end

    # List candidate source types with subtypes
    # Get a list of all available candidate source type with subtypes
    # @param [Hash] opts the optional parameters
    # @return [Array<(SourceTypes, Integer, Hash)>] SourceTypes data, response status code and response headers
    def configuration_source_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_source_types ...'
      end
      # resource path
      local_var_path = '/configuration/sources'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'SourceTypes' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_source_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List candidate sources
    # Get a list of all available candidate sources by type.
    # @param source_type Source type from /configuration/sources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_sub_type Source SubType from  /configuration/sources
    # @option opts [Integer] :limit number of elements to return. max value is 100 (default to 100)
    # @option opts [Integer] :offset number of elements to skip while processing result (default to 0)
    # @return [Sources]
    def configuration_source_values_all(source_type, opts = {})
      data, _status_code, _headers = configuration_source_values_all_with_http_info(source_type, opts)
      data
    end

    # List candidate sources
    # Get a list of all available candidate sources by type.
    # @param source_type Source type from /configuration/sources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_sub_type Source SubType from  /configuration/sources
    # @option opts [Integer] :limit number of elements to return. max value is 100
    # @option opts [Integer] :offset number of elements to skip while processing result
    # @return [Array<(Sources, Integer, Hash)>] Sources data, response status code and response headers
    def configuration_source_values_all_with_http_info(source_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_source_values_all ...'
      end
      # verify the required parameter 'source_type' is set
      if @api_client.config.client_side_validation && source_type.nil?
        fail ArgumentError, "Missing the required parameter 'source_type' when calling ConfigurationApi.configuration_source_values_all"
      end
      # resource path
      local_var_path = '/configuration/sources/{sourceType}/values'.sub('{' + 'sourceType' + '}', source_type.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sourceSubType'] = opts[:'source_sub_type'] if !opts[:'source_sub_type'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Sources' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_source_values_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a candidate source
    # Get a single candidate sources for a given type.
    # @param source_type Source type from /configuration/sources
    # @param source_value_id Source id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_sub_type Source SubType from  /configuration/sources
    # @return [Source]
    def configuration_source_values_single(source_type, source_value_id, opts = {})
      data, _status_code, _headers = configuration_source_values_single_with_http_info(source_type, source_value_id, opts)
      data
    end

    # Get a candidate source
    # Get a single candidate sources for a given type.
    # @param source_type Source type from /configuration/sources
    # @param source_value_id Source id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_sub_type Source SubType from  /configuration/sources
    # @return [Array<(Source, Integer, Hash)>] Source data, response status code and response headers
    def configuration_source_values_single_with_http_info(source_type, source_value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_source_values_single ...'
      end
      # verify the required parameter 'source_type' is set
      if @api_client.config.client_side_validation && source_type.nil?
        fail ArgumentError, "Missing the required parameter 'source_type' when calling ConfigurationApi.configuration_source_values_single"
      end
      # verify the required parameter 'source_value_id' is set
      if @api_client.config.client_side_validation && source_value_id.nil?
        fail ArgumentError, "Missing the required parameter 'source_value_id' when calling ConfigurationApi.configuration_source_values_single"
      end
      # resource path
      local_var_path = '/configuration/sources/{sourceType}/values/{sourceValueId}'.sub('{' + 'sourceType' + '}', source_type.to_s).sub('{' + 'sourceValueId' + '}', source_value_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sourceSubType'] = opts[:'source_sub_type'] if !opts[:'source_sub_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Source' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_source_values_single\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a candidate source by identifier.
    # Get a single candidate source for a given identifier (included deleted source).
    # @param source_identifier Source identifier
    # @param [Hash] opts the optional parameters
    # @return [SourceDefinition]
    def configuration_source_values_single_by_identifier(source_identifier, opts = {})
      data, _status_code, _headers = configuration_source_values_single_by_identifier_with_http_info(source_identifier, opts)
      data
    end

    # Get a candidate source by identifier.
    # Get a single candidate source for a given identifier (included deleted source).
    # @param source_identifier Source identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(SourceDefinition, Integer, Hash)>] SourceDefinition data, response status code and response headers
    def configuration_source_values_single_by_identifier_with_http_info(source_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.configuration_source_values_single_by_identifier ...'
      end
      # verify the required parameter 'source_identifier' is set
      if @api_client.config.client_side_validation && source_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'source_identifier' when calling ConfigurationApi.configuration_source_values_single_by_identifier"
      end
      # resource path
      local_var_path = '/configuration/sources/{sourceIdentifier}'.sub('{' + 'sourceIdentifier' + '}', source_identifier.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'SourceDefinition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#configuration_source_values_single_by_identifier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
