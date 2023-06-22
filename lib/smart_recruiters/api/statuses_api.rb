

module SmartRecruiters
  class StatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Changes a candidate's status.
    # @param body New candidate&#x27;s status
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def statuses_candidate_put(body, interview_id, opts = {})
      statuses_candidate_put_with_http_info(body, interview_id, opts)
      nil
    end

    # Changes a candidate&#x27;s status.
    # @param body New candidate&#x27;s status
    # @param interview_id ID of the interview
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def statuses_candidate_put_with_http_info(body, interview_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusesApi.statuses_candidate_put ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling StatusesApi.statuses_candidate_put"
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling StatusesApi.statuses_candidate_put"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}/candidate/status'.sub('{' + 'interviewId' + '}', interview_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusesApi#statuses_candidate_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Changes a interviewer's status in given timeslot
    # @param body New interviewer&#x27;s status
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param user_id ID of the user
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def statuses_interviewer_put(body, interview_id, timeslot_id, user_id, opts = {})
      statuses_interviewer_put_with_http_info(body, interview_id, timeslot_id, user_id, opts)
      nil
    end

    # Changes a interviewer&#x27;s status in given timeslot
    # @param body New interviewer&#x27;s status
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param user_id ID of the user
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def statuses_interviewer_put_with_http_info(body, interview_id, timeslot_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusesApi.statuses_interviewer_put ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling StatusesApi.statuses_interviewer_put"
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling StatusesApi.statuses_interviewer_put"
      end
      # verify the required parameter 'timeslot_id' is set
      if @api_client.config.client_side_validation && timeslot_id.nil?
        fail ArgumentError, "Missing the required parameter 'timeslot_id' when calling StatusesApi.statuses_interviewer_put"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling StatusesApi.statuses_interviewer_put"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}/timeslots/{timeslotId}/interviewers/{userId}/status'.sub('{' + 'interviewId' + '}', interview_id.to_s).sub('{' + 'timeslotId' + '}', timeslot_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusesApi#statuses_interviewer_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Changes a candidate's status in given timeslot
    # @param body New candidate&#x27;s status
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def statuses_timeslot_candidate_put(body, interview_id, timeslot_id, opts = {})
      statuses_timeslot_candidate_put_with_http_info(body, interview_id, timeslot_id, opts)
      nil
    end

    # Changes a candidate&#x27;s status in given timeslot
    # @param body New candidate&#x27;s status
    # @param interview_id ID of the interview
    # @param timeslot_id ID of the timeslot
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def statuses_timeslot_candidate_put_with_http_info(body, interview_id, timeslot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusesApi.statuses_timeslot_candidate_put ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling StatusesApi.statuses_timeslot_candidate_put"
      end
      # verify the required parameter 'interview_id' is set
      if @api_client.config.client_side_validation && interview_id.nil?
        fail ArgumentError, "Missing the required parameter 'interview_id' when calling StatusesApi.statuses_timeslot_candidate_put"
      end
      # verify the required parameter 'timeslot_id' is set
      if @api_client.config.client_side_validation && timeslot_id.nil?
        fail ArgumentError, "Missing the required parameter 'timeslot_id' when calling StatusesApi.statuses_timeslot_candidate_put"
      end
      # resource path
      local_var_path = '/interviews/{interviewId}/timeslots/{timeslotId}/candidateStatus'.sub('{' + 'interviewId' + '}', interview_id.to_s).sub('{' + 'timeslotId' + '}', timeslot_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusesApi#statuses_timeslot_candidate_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
