

module SmartRecruiters
  class InterviewsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an interview
    # @param body Interview to be added
    # @param [Hash] opts the optional parameters
    # @return [Interview]
    def interviews_create(body, opts = {})
      data, _status_code, _headers = interviews_create_with_http_info(body, opts)
      data
    end

    # Creates an interview
    # @param body Interview to be added
    # @param [Hash] opts the optional parameters
    # @return [Array<(Interview, Integer, Hash)>] Interview data, response status code and response headers
    def interviews_create_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewsApi.interviews_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling InterviewsApi.interviews_create"
      end
      # resource path
      local_var_path = '/interviews'

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

      return_type = opts[:return_type] || 'Interview' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InterviewsApi#interviews_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes an interview
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def interviews_delete(interview_id, opts = {})
      interviews_delete_with_http_info(interview_id, opts)
      nil
    end

    # Deletes an interview
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def interviews_delete_with_http_info(interview_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewsApi.interviews_delete ...'
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling InterviewsApi.interviews_delete"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}'.sub('{' + 'interviewId' + '}', interview_id.to_s)

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
        @api_client.config.logger.debug "API called: InterviewsApi#interviews_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves an interview
    # Interview details
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [Interview]
    def interviews_get(interview_id, opts = {})
      data, _status_code, _headers = interviews_get_with_http_info(interview_id, opts)
      data
    end

    # Retrieves an interview
    # Interview details
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [Array<(Interview, Integer, Hash)>] Interview data, response status code and response headers
    def interviews_get_with_http_info(interview_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewsApi.interviews_get ...'
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling InterviewsApi.interviews_get"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}'.sub('{' + 'interviewId' + '}', interview_id.to_s)

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

      return_type = opts[:return_type] || 'Interview' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InterviewsApi#interviews_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves a list of interviews
    # List of interviews
    # @param application_id ID of the application
    # @param [Hash] opts the optional parameters
    # @return [InterviewsList]
    def interviews_get_list(application_id, opts = {})
      data, _status_code, _headers = interviews_get_list_with_http_info(application_id, opts)
      data
    end

    # Retrieves a list of interviews
    # List of interviews
    # @param application_id ID of the application
    # @param [Hash] opts the optional parameters
    # @return [Array<(InterviewsList, Integer, Hash)>] InterviewsList data, response status code and response headers
    def interviews_get_list_with_http_info(application_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewsApi.interviews_get_list ...'
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling InterviewsApi.interviews_get_list"
      end
      # resource path
      local_var_path = '/interviews'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'applicationId'] = application_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InterviewsList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InterviewsApi#interviews_get_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modifies an interview
    # @param body Interview to be updated
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def interviews_update(body, interview_id, opts = {})
      interviews_update_with_http_info(body, interview_id, opts)
      nil
    end

    # Modifies an interview
    # @param body Interview to be updated
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def interviews_update_with_http_info(body, interview_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InterviewsApi.interviews_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling InterviewsApi.interviews_update"
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling InterviewsApi.interviews_update"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}'.sub('{' + 'interviewId' + '}', interview_id.to_s)

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
        @api_client.config.logger.debug "API called: InterviewsApi#interviews_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
