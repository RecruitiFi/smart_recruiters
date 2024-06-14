
module SmartRecruiters
  class PostingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    
    # Create a New Candidate Application
    # Operation is done on behalf of a candidate – they can access and edit the data, including attachments
    # @param uuid [String] Posting UUID
    # @param apply_api_request [ApplyApiRequest] New candidate data
    # @param [Hash] opts the optional parameters
    # @return [ApplyApiResponse]
    def create_candidate(uuid, apply_api_request, opts = {})
      data, _status_code, _headers = create_candidate_with_http_info(uuid, apply_api_request, opts)
      data
    end

    # Create a New Candidate Application
    # Operation is done on behalf of a candidate – they can access and edit the data, including attachments
    # @param uuid [String] Posting UUID
    # @param apply_api_request [ApplyApiRequest] New candidate data
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplyApiResponse, Integer, Hash)>] ApplyApiResponse data, response status code and response headers
    def create_candidate_with_http_info(uuid, apply_api_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationAPIApi.create_candidate ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ApplicationAPIApi.create_candidate"
      end
      pattern = Regexp.new(/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}/)
      if @api_client.config.client_side_validation && uuid !~ pattern
        fail ArgumentError, "invalid value for 'uuid' when calling ApplicationAPIApi.create_candidate, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'apply_api_request' is set
      if @api_client.config.client_side_validation && apply_api_request.nil?
        fail ArgumentError, "Missing the required parameter 'apply_api_request' when calling ApplicationAPIApi.create_candidate"
      end
      # resource path
      local_var_path = '/postings/{uuid}/candidates'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(apply_api_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplyApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['key']

      new_options = opts.merge(
        :operation => :"ApplicationAPIApi.create_candidate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationAPIApi#create_candidate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get candidate status
    # @param uuid [String] Posting UUID
    # @param candidate_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicationStatusInfo]
    def get_application_status(uuid, candidate_id, opts = {})
      data, _status_code, _headers = get_application_status_with_http_info(uuid, candidate_id, opts)
      data
    end

    # Get candidate status
    # @param uuid [String] Posting UUID
    # @param candidate_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationStatusInfo, Integer, Hash)>] ApplicationStatusInfo data, response status code and response headers
    def get_application_status_with_http_info(uuid, candidate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationAPIApi.get_application_status ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ApplicationAPIApi.get_application_status"
      end
      pattern = Regexp.new(/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}/)
      if @api_client.config.client_side_validation && uuid !~ pattern
        fail ArgumentError, "invalid value for 'uuid' when calling ApplicationAPIApi.get_application_status, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'candidate_id' is set
      if @api_client.config.client_side_validation && candidate_id.nil?
        fail ArgumentError, "Missing the required parameter 'candidate_id' when calling ApplicationAPIApi.get_application_status"
      end
      # resource path
      local_var_path = '/postings/{uuid}/candidates/{candidateId}/status'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s)).sub('{' + 'candidateId' + '}', CGI.escape(candidate_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationStatusInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['key']

      new_options = opts.merge(
        :operation => :"ApplicationAPIApi.get_application_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationAPIApi#get_application_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get application configuration for posting
    # Returns application configuration for posting. Configuration contains screening questions, privacy policies and settings. Optionally, conditional questions can be included in the response. 
    # @param uuid [String] Posting UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Language for screening questions. By default &#39;en&#39;.
    # @option opts [Boolean] :conditionals_included Specifies whether conditional questions should be returned in the response. &#39;false&#39; if not specified - Only available for BETA customers 
    # @return [ApplyConfiguration]
    def get_apply_configuration_for_posting(uuid, opts = {})
      data, _status_code, _headers = get_apply_configuration_for_posting_with_http_info(uuid, opts)
      data
    end

    # Get application configuration for posting
    # Returns application configuration for posting. Configuration contains screening questions, privacy policies and settings. Optionally, conditional questions can be included in the response. 
    # @param uuid [String] Posting UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Language for screening questions. By default &#39;en&#39;.
    # @option opts [Boolean] :conditionals_included Specifies whether conditional questions should be returned in the response. &#39;false&#39; if not specified - Only available for BETA customers 
    # @return [Array<(ApplyConfiguration, Integer, Hash)>] ApplyConfiguration data, response status code and response headers
    def get_apply_configuration_for_posting_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationAPIApi.get_apply_configuration_for_posting ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ApplicationAPIApi.get_apply_configuration_for_posting"
      end
      pattern = Regexp.new(/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}/)
      if @api_client.config.client_side_validation && uuid !~ pattern
        fail ArgumentError, "invalid value for 'uuid' when calling ApplicationAPIApi.get_apply_configuration_for_posting, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/postings/{uuid}/configuration'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'conditionalsIncluded'] = opts[:'conditionals_included'] if !opts[:'conditionals_included'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApplyConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['key']

      new_options = opts.merge(
        :operation => :"ApplicationAPIApi.get_apply_configuration_for_posting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationAPIApi#get_apply_configuration_for_posting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end