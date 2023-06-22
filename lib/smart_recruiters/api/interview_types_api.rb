

module SmartRecruiters
  class InterviewTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Removes interview type with given name
    # @param interview_type Interview type name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def types_delete(interview_type, opts = {})
      types_delete_with_http_info(interview_type, opts)
      nil
    end

    # Removes interview type with given name
    # @param interview_type Interview type name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def types_delete_with_http_info(interview_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewTypesApi.types_delete ...'
      end
      # verify the required parameter 'interview_type' is set
      if @api_client.config.client_side_validation && interview_type.nil?
        fail ArgumentError, "Missing the required parameter 'interview_type' when calling InterviewTypesApi.types_delete"
      end
      # resource path
      local_var_path = '/interview-types/{interviewType}'.sub('{' + 'interviewType' + '}', interview_type.to_s)

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
        @api_client.config.logger.debug "API called: InterviewTypesApi#types_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves interview types
    # @param [Hash] opts the optional parameters
    # @return [InterviewTypes]
    def types_get(opts = {})
      data, _status_code, _headers = types_get_with_http_info(opts)
      data
    end

    # Retrieves interview types
    # @param [Hash] opts the optional parameters
    # @return [Array<(InterviewTypes, Integer, Hash)>] InterviewTypes data, response status code and response headers
    def types_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewTypesApi.types_get ...'
      end
      # resource path
      local_var_path = '/interview-types'

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

      return_type = opts[:return_type] || 'InterviewTypes' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InterviewTypesApi#types_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Adds interview types to already existing ones
    # @param body Interview types to be added
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def types_update(body, opts = {})
      types_update_with_http_info(body, opts)
      nil
    end

    # Adds interview types to already existing ones
    # @param body Interview types to be added
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def types_update_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewTypesApi.types_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling InterviewTypesApi.types_update"
      end
      # resource path
      local_var_path = '/interview-types'

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
        @api_client.config.logger.debug "API called: InterviewTypesApi#types_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
