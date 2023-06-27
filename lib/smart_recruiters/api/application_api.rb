module SmartRecruiters
  class ApplicationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create candidate. Operation is done on behalf of candidate. It means that candidate can later on see and edit this data - that includes attachments.
    # @param body New candidate data
    # @param uuid Posting UUID
    # @param [Hash] opts the optional parameters
    # @return [ApplyApiResponse]
    def create_candidate(body, uuid, opts = {})
      data, _status_code, _headers = create_candidate_with_http_info(body, uuid, opts)
      data
    end

    # Create candidate. Operation is done on behalf of candidate. It means that candidate can later on see and edit this data - that includes attachments.
    # @param body New candidate data
    # @param uuid Posting UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplyApiResponse, Integer, Hash)>] ApplyApiResponse data, response status code and response headers
    def create_candidate_with_http_info(body, uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.create_candidate ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ApplicationApi.create_candidate"
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ApplicationApi.create_candidate"
      end
      # resource path
      local_var_path = '/postings/{uuid}/candidates'.sub('{' + 'uuid' + '}', uuid.to_s)

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

      return_type = opts[:return_type] || 'ApplyApiResponse' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#create_candidate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate status
    # @param uuid Posting UUID
    # @param candidate_id 
    # @param [Hash] opts the optional parameters
    # @return [ApplicationStatusInfo]
    def get_application_status(uuid, candidate_id, opts = {})
      data, _status_code, _headers = get_application_status_with_http_info(uuid, candidate_id, opts)
      data
    end

    # Get candidate status
    # @param uuid Posting UUID
    # @param candidate_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationStatusInfo, Integer, Hash)>] ApplicationStatusInfo data, response status code and response headers
    def get_application_status_with_http_info(uuid, candidate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.get_application_status ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ApplicationApi.get_application_status"
      end
      # verify the required parameter 'candidate_id' is set
      if @api_client.config.client_side_validation && candidate_id.nil?
        fail ArgumentError, "Missing the required parameter 'candidate_id' when calling ApplicationApi.get_application_status"
      end
      # resource path
      local_var_path = '/postings/{uuid}/candidates/{candidateId}/status'.sub('{' + 'uuid' + '}', uuid.to_s).sub('{' + 'candidateId' + '}', candidate_id.to_s)

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

      return_type = opts[:return_type] || 'ApplicationStatusInfo' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#get_application_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get screening question for posting
    # @param uuid Posting UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Language for screening questions. By default &#x27;en&#x27;.
    # @return [ApplyConfiguration]
    def get_apply_configuration_for_posting(uuid, opts = {})
      data, _status_code, _headers = get_apply_configuration_for_posting_with_http_info(uuid, opts)
      data
    end

    # Get screening question for posting
    # @param uuid Posting UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Language for screening questions. By default &#x27;en&#x27;.
    # @return [Array<(ApplyConfiguration, Integer, Hash)>] ApplyConfiguration data, response status code and response headers
    def get_apply_configuration_for_posting_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.get_apply_configuration_for_posting ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ApplicationApi.get_apply_configuration_for_posting"
      end
      # resource path
      local_var_path = '/postings/{uuid}/configuration'.sub('{' + 'uuid' + '}', uuid.to_s)

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

      return_type = opts[:return_type] || 'ApplyConfiguration' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#get_apply_configuration_for_posting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
