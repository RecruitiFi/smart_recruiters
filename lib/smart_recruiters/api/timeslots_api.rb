

module SmartRecruiters
  class TimeslotsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a timeslot
    # @param body Timeslot to be added
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [Timeslot]
    def timeslots_create(body, interview_id, opts = {})
      data, _status_code, _headers = timeslots_create_with_http_info(body, interview_id, opts)
      data
    end

    # Creates a timeslot
    # @param body Timeslot to be added
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [Array<(Timeslot, Integer, Hash)>] Timeslot data, response status code and response headers
    def timeslots_create_with_http_info(body, interview_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeslotsApi.timeslots_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TimeslotsApi.timeslots_create"
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling TimeslotsApi.timeslots_create"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}/timeslots'.sub('{' + 'interviewId' + '}', interview_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'Timeslot' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeslotsApi#timeslots_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a timeslot
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def timeslots_delete(interview_id, timeslot_id, opts = {})
      timeslots_delete_with_http_info(interview_id, timeslot_id, opts)
      nil
    end

    # Deletes a timeslot
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def timeslots_delete_with_http_info(interview_id, timeslot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeslotsApi.timeslots_delete ...'
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling TimeslotsApi.timeslots_delete"
      end
      # verify the required parameter 'timeslot_id' is set
      if @api_client.config.client_side_validation && timeslot_id.nil?
        fail ArgumentError, "Missing the required parameter 'timeslot_id' when calling TimeslotsApi.timeslots_delete"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}/timeslots/{timeslotId}'.sub('{' + 'interviewId' + '}', interview_id.to_s).sub('{' + 'timeslotId' + '}', timeslot_id.to_s)

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
        @api_client.config.logger.debug "API called: TimeslotsApi#timeslots_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves a timeslot
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [Timeslot]
    def timeslots_get(interview_id, timeslot_id, opts = {})
      data, _status_code, _headers = timeslots_get_with_http_info(interview_id, timeslot_id, opts)
      data
    end

    # Retrieves a timeslot
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [Array<(Timeslot, Integer, Hash)>] Timeslot data, response status code and response headers
    def timeslots_get_with_http_info(interview_id, timeslot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeslotsApi.timeslots_get ...'
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling TimeslotsApi.timeslots_get"
      end
      # verify the required parameter 'timeslot_id' is set
      if @api_client.config.client_side_validation && timeslot_id.nil?
        fail ArgumentError, "Missing the required parameter 'timeslot_id' when calling TimeslotsApi.timeslots_get"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}/timeslots/{timeslotId}'.sub('{' + 'interviewId' + '}', interview_id.to_s).sub('{' + 'timeslotId' + '}', timeslot_id.to_s)

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

      return_type = opts[:return_type] || 'Timeslot' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeslotsApi#timeslots_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modifies a timeslot
    # @param body Timeslot to be updated
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def timeslots_update(body, interview_id, timeslot_id, opts = {})
      timeslots_update_with_http_info(body, interview_id, timeslot_id, opts)
      nil
    end

    # Modifies a timeslot
    # @param body Timeslot to be updated
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def timeslots_update_with_http_info(body, interview_id, timeslot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeslotsApi.timeslots_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TimeslotsApi.timeslots_update"
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling TimeslotsApi.timeslots_update"
      end
      # verify the required parameter 'timeslot_id' is set
      if @api_client.config.client_side_validation && timeslot_id.nil?
        fail ArgumentError, "Missing the required parameter 'timeslot_id' when calling TimeslotsApi.timeslots_update"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}/timeslots/{timeslotId}'.sub('{' + 'interviewId' + '}', interview_id.to_s).sub('{' + 'timeslotId' + '}', timeslot_id.to_s)

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
        @api_client.config.logger.debug "API called: TimeslotsApi#timeslots_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
