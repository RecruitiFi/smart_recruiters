

module SmartRecruiters
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Fetch messages
    # Search for messages of given candidate. Use jobId parameter to filter results to messages only for specific job application. Accessible only for users with ADMINISTRATOR role.
    # @param candidate_id identifier of a candidate
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id identifier of a job
    # @option opts [String] :page_id identifier of next page
    # @option opts [Integer] :limit limit (default to 10)
    # @return [MessagesView]
    def messages_fetch(candidate_id, opts = {})
      data, _status_code, _headers = messages_fetch_with_http_info(candidate_id, opts)
      data
    end

    # Fetch messages
    # Search for messages of given candidate. Use jobId parameter to filter results to messages only for specific job application. Accessible only for users with ADMINISTRATOR role.
    # @param candidate_id identifier of a candidate
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id identifier of a job
    # @option opts [String] :page_id identifier of next page
    # @option opts [Integer] :limit limit
    # @return [Array<(MessagesView, Integer, Hash)>] MessagesView data, response status code and response headers
    def messages_fetch_with_http_info(candidate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_fetch ...'
      end
      # verify the required parameter 'candidate_id' is set
      if @api_client.config.client_side_validation && candidate_id.nil?
        fail ArgumentError, "Missing the required parameter 'candidate_id' when calling MessagesApi.messages_fetch"
      end
      # resource path
      local_var_path = '/messages'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'candidateId'] = candidate_id
      query_params[:'jobId'] = opts[:'job_id'] if !opts[:'job_id'].nil?
      query_params[:'pageId'] = opts[:'page_id'] if !opts[:'page_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'MessageView' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_fetch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Shares new messages on Hireloop with Users, Hiring Teams or Everyone and sends emails.
    # How does it work: * In **content** field, provide a text to be shared. * @-mention users to send them an email   * In **content** field use **@[USER:id]** to mention a User, e.g. @[USER:324132421] * Email responses are added as comments to your update * \\#-tag candidates to link updates to their profiles   * In **content** field use **#[CANDIDATE:id]** to tag a candidate, e.g. #[CANDIDATE:9847954623] * Use **shareWith** to share a feed update with individuals, hiring teams or everyone   * In **users** field, provide an array of User IDs with which you want to share, e.g. \"users\": [\"12343542356\",\"12343542357\"].   * In **hiringTeamOf** field, provide an array of Job IDs, this will share message with a full hiring team of those jobs, e.g. \"hiringTeamOf\": [\"123423432322\",\"123423432324\"].   * **everyone** flag allows sharing with everyone in a company. If not provided, defaults to **false**.   * **openNote** flag allows sharing with everyone in a company that has access to the candidate. If not provided, defaults to **false** 
    # @param [Hash] opts the optional parameters
    # @option opts [Message] :body Message to post
    # @return [MessageDetails]
    def messages_shares_create(opts = {})
      data, _status_code, _headers = messages_shares_create_with_http_info(opts)
      data
    end

    # Shares new messages on Hireloop with Users, Hiring Teams or Everyone and sends emails.
    # How does it work: * In **content** field, provide a text to be shared. * @-mention users to send them an email   * In **content** field use **@[USER:id]** to mention a User, e.g. @[USER:324132421] * Email responses are added as comments to your update * \\#-tag candidates to link updates to their profiles   * In **content** field use **#[CANDIDATE:id]** to tag a candidate, e.g. #[CANDIDATE:9847954623] * Use **shareWith** to share a feed update with individuals, hiring teams or everyone   * In **users** field, provide an array of User IDs with which you want to share, e.g. \&quot;users\&quot;: [\&quot;12343542356\&quot;,\&quot;12343542357\&quot;].   * In **hiringTeamOf** field, provide an array of Job IDs, this will share message with a full hiring team of those jobs, e.g. \&quot;hiringTeamOf\&quot;: [\&quot;123423432322\&quot;,\&quot;123423432324\&quot;].   * **everyone** flag allows sharing with everyone in a company. If not provided, defaults to **false**.   * **openNote** flag allows sharing with everyone in a company that has access to the candidate. If not provided, defaults to **false** 
    # @param [Hash] opts the optional parameters
    # @option opts [Message] :body Message to post
    # @return [Array<(MessageDetails, Integer, Hash)>] MessageDetails data, response status code and response headers
    def messages_shares_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_shares_create ...'
      end
      # resource path
      local_var_path = '/messages/shares'

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

      return_type = opts[:return_type] || 'MessageDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_shares_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a message
    # Delete a message with a given id. Deleted message is no longer visible on Hireloop.
    # @param id identifier of a message
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def messages_shares_delete(id, opts = {})
      messages_shares_delete_with_http_info(id, opts)
      nil
    end

    # Delete a message
    # Delete a message with a given id. Deleted message is no longer visible on Hireloop.
    # @param id identifier of a message
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def messages_shares_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.messages_shares_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MessagesApi.messages_shares_delete"
      end
      # resource path
      local_var_path = '/messages/shares/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: MessagesApi#messages_shares_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
