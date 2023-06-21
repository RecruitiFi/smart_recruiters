module SmartRecruiters
  class SubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Activate webhook subscription.
    # To ensure that target server is ready to consume notifications, we require you to implement the initial handshake.  Having subscription with `callbackUrl`: `https://example.org/hook`, during activation we will make `POST` request with `X-Hook-Secret` header:  ``` POST https://example.com/hook X-Hook-Secret: 4jn8fs9011jj8 ```  We expect your server to respond within the time of 20 seconds with HTTP `200` response containing `X-Hook-Secret` header with same value.  ``` Response 200 X-Hook-Secret: 4jn8fs9011jj8 ``` 
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def subscriptions_activate(id, opts = {})
      subscriptions_activate_with_http_info(id, opts)
      nil
    end

    # Activate webhook subscription.
    # To ensure that target server is ready to consume notifications, we require you to implement the initial handshake.  Having subscription with &#x60;callbackUrl&#x60;: &#x60;https://example.org/hook&#x60;, during activation we will make &#x60;POST&#x60; request with &#x60;X-Hook-Secret&#x60; header:  &#x60;&#x60;&#x60; POST https://example.com/hook X-Hook-Secret: 4jn8fs9011jj8 &#x60;&#x60;&#x60;  We expect your server to respond within the time of 20 seconds with HTTP &#x60;200&#x60; response containing &#x60;X-Hook-Secret&#x60; header with same value.  &#x60;&#x60;&#x60; Response 200 X-Hook-Secret: 4jn8fs9011jj8 &#x60;&#x60;&#x60; 
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def subscriptions_activate_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_activate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.subscriptions_activate"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/activation'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_activate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Subscribe to a webhook.
    # Please be aware that before any event is delivered each subscription needs to be activated.  See [subscription activation](subscriptionsactivate-1).  We do limit number of subscriptions each subscriber can register. It means that:  * individual user can register up to 20 subscriptions * OAuth application can register up to 20 subscriptions on behalf of a single user  Alerting email address and callback authentication properties are optional. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Subscription]
    def subscriptions_create(body, opts = {})
      data, _status_code, _headers = subscriptions_create_with_http_info(body, opts)
      data
    end

    # Subscribe to a webhook.
    # Please be aware that before any event is delivered each subscription needs to be activated.  See [subscription activation](subscriptionsactivate-1).  We do limit number of subscriptions each subscriber can register. It means that:  * individual user can register up to 20 subscriptions * OAuth application can register up to 20 subscriptions on behalf of a single user  Alerting email address and callback authentication properties are optional. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Subscription, Integer, Hash)>] Subscription data, response status code and response headers
    def subscriptions_create_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SubscriptionsApi.subscriptions_create"
      end
      # resource path
      local_var_path = '/subscriptions'

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

      return_type = opts[:return_type] || 'Subscription' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete webhook subscription.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def subscriptions_delete(id, opts = {})
      subscriptions_delete_with_http_info(id, opts)
      nil
    end

    # Delete webhook subscription.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def subscriptions_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.subscriptions_delete"
      end
      # resource path
      local_var_path = '/subscriptions/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate secret key for a webhook subscription.
    # We allow you to generate a secret key for the subscription. You can use it to verify the author of callback messages. When you have a secret key already defined - a creation of new one will make old one deprecated - it will be still active for 24 hours though. You can have up to 16 non-expired secret keys.  A signature will be included in header `smartrecruiters-signature` of callback request. Additionally we will send `smartrecruiters-timestamp` header with timestamp (seconds) of request.  `smartrecruiters-signature` header value has the following format:  ``` $SIGNATURE_SCHEMA=$SIGNATURE_1;$SIGNATURE_SCHEMA=$SIGNATURE_2... ```  As you may notice there may be multiple signatures included in the header. It can be caused by one or both: * having multiple active keys * smartrecruiters providing multiple signatures per key with different signature schemes. We may use it in the future to deliver new algorithm of signature creation without breaking backward compability. Every segment of header value is delimited by `;` character  Currently, we support and sent following signature (`$SIGNATURE_SCHEMA`):  #### 1) `v1`  Signature calculated using HMAC with SHA256 algorithm. Hash should be calculated from following elements concatenated by the `.` character:   * `smartrecruiters-timestamp` header value   * request body   * `event-id` header value   * `event-name` header value   * `event-version` header value   * `link` header value  Order of this elements is important. In absence of header please use an empty string as its value.  For example assume we have: * One active secret key: HeBVky2bccvvkcXPimH8c * Callback request:   * headers:     * content-type: application/json     * smartrecruiters-signature: \"v1=2e9291f10d44ca10204a4cd81b05d73b6a316b2b605d4e2e0e0b37b40198ce1f\"     * smartrecruiters-timestamp = \"1574080897\"     * event-id = \"123\"     * link = \"<http://smartrecruiters.com/endpoint>; rel=self\"     * event-name = \"application.created\"     * event-version = \"v201910\"   * body: {\"job_id\":\"jid\",\"candidate_id\": \"cid\"}  hash should be calculated from value: ``` 1574080897.{\"job_id\":\"jid\",\"candidate_id\":\"cid\"}.123.application.created.v201910.<http://smartrecruiters.com/endpoint>; rel=self ```  and after using HMAC and SHA256 it should give you hash : 2e9291f10d44ca10204a4cd81b05d73b6a316b2b605d4e2e0e0b37b40198ce1f,  so that `smartrecruiters-signature` header in the callback request will have value: `v1=2e9291f10d44ca10204a4cd81b05d73b6a316b2b605d4e2e0e0b37b40198ce1f` 
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyPayload]
    def subscriptions_generate_secret_key(id, opts = {})
      data, _status_code, _headers = subscriptions_generate_secret_key_with_http_info(id, opts)
      data
    end

    # Generate secret key for a webhook subscription.
    # We allow you to generate a secret key for the subscription. You can use it to verify the author of callback messages. When you have a secret key already defined - a creation of new one will make old one deprecated - it will be still active for 24 hours though. You can have up to 16 non-expired secret keys.  A signature will be included in header &#x60;smartrecruiters-signature&#x60; of callback request. Additionally we will send &#x60;smartrecruiters-timestamp&#x60; header with timestamp (seconds) of request.  &#x60;smartrecruiters-signature&#x60; header value has the following format:  &#x60;&#x60;&#x60; $SIGNATURE_SCHEMA&#x3D;$SIGNATURE_1;$SIGNATURE_SCHEMA&#x3D;$SIGNATURE_2... &#x60;&#x60;&#x60;  As you may notice there may be multiple signatures included in the header. It can be caused by one or both: * having multiple active keys * smartrecruiters providing multiple signatures per key with different signature schemes. We may use it in the future to deliver new algorithm of signature creation without breaking backward compability. Every segment of header value is delimited by &#x60;;&#x60; character  Currently, we support and sent following signature (&#x60;$SIGNATURE_SCHEMA&#x60;):  #### 1) &#x60;v1&#x60;  Signature calculated using HMAC with SHA256 algorithm. Hash should be calculated from following elements concatenated by the &#x60;.&#x60; character:   * &#x60;smartrecruiters-timestamp&#x60; header value   * request body   * &#x60;event-id&#x60; header value   * &#x60;event-name&#x60; header value   * &#x60;event-version&#x60; header value   * &#x60;link&#x60; header value  Order of this elements is important. In absence of header please use an empty string as its value.  For example assume we have: * One active secret key: HeBVky2bccvvkcXPimH8c * Callback request:   * headers:     * content-type: application/json     * smartrecruiters-signature: \&quot;v1&#x3D;2e9291f10d44ca10204a4cd81b05d73b6a316b2b605d4e2e0e0b37b40198ce1f\&quot;     * smartrecruiters-timestamp &#x3D; \&quot;1574080897\&quot;     * event-id &#x3D; \&quot;123\&quot;     * link &#x3D; \&quot;&lt;http://smartrecruiters.com/endpoint&gt;; rel&#x3D;self\&quot;     * event-name &#x3D; \&quot;application.created\&quot;     * event-version &#x3D; \&quot;v201910\&quot;   * body: {\&quot;job_id\&quot;:\&quot;jid\&quot;,\&quot;candidate_id\&quot;: \&quot;cid\&quot;}  hash should be calculated from value: &#x60;&#x60;&#x60; 1574080897.{\&quot;job_id\&quot;:\&quot;jid\&quot;,\&quot;candidate_id\&quot;:\&quot;cid\&quot;}.123.application.created.v201910.&lt;http://smartrecruiters.com/endpoint&gt;; rel&#x3D;self &#x60;&#x60;&#x60;  and after using HMAC and SHA256 it should give you hash : 2e9291f10d44ca10204a4cd81b05d73b6a316b2b605d4e2e0e0b37b40198ce1f,  so that &#x60;smartrecruiters-signature&#x60; header in the callback request will have value: &#x60;v1&#x3D;2e9291f10d44ca10204a4cd81b05d73b6a316b2b605d4e2e0e0b37b40198ce1f&#x60; 
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyPayload, Integer, Hash)>] SecretKeyPayload data, response status code and response headers
    def subscriptions_generate_secret_key_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_generate_secret_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.subscriptions_generate_secret_key"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/secret-key'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'SecretKeyPayload' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_generate_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve single webhook subscription.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [Subscription]
    def subscriptions_get(id, opts = {})
      data, _status_code, _headers = subscriptions_get_with_http_info(id, opts)
      data
    end

    # Retrieve single webhook subscription.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Subscription, Integer, Hash)>] Subscription data, response status code and response headers
    def subscriptions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.subscriptions_get"
      end
      # resource path
      local_var_path = '/subscriptions/{id}'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Subscription' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve webhook subscriptions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_id identifier of the next page of subscriptions
    # @option opts [Integer] :limit number of elements to return (default to 10)
    # @return [Subscriptions]
    def subscriptions_get_all(opts = {})
      data, _status_code, _headers = subscriptions_get_all_with_http_info(opts)
      data
    end

    # Retrieve webhook subscriptions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_id identifier of the next page of subscriptions
    # @option opts [Integer] :limit number of elements to return
    # @return [Array<(Subscriptions, Integer, Hash)>] Subscriptions data, response status code and response headers
    def subscriptions_get_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_get_all ...'
      end
      # resource path
      local_var_path = '/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_id'] = opts[:'page_id'] if !opts[:'page_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Subscriptions' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve subscription secret key
    # Retrieves the last secret key for webhook subscription.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyPayload]
    def subscriptions_get_secret_key(id, opts = {})
      data, _status_code, _headers = subscriptions_get_secret_key_with_http_info(id, opts)
      data
    end

    # Retrieve subscription secret key
    # Retrieves the last secret key for webhook subscription.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyPayload, Integer, Hash)>] SecretKeyPayload data, response status code and response headers
    def subscriptions_get_secret_key_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_get_secret_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.subscriptions_get_secret_key"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/secret-key'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'SecretKeyPayload' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_get_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve callback request details starting from newest.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_id identifier of the next page of subscriptions
    # @option opts [Integer] :limit number of elements to return (default to 10)
    # @option opts [String] :callback_status status of callback, whan absent all statuses will be returned
    # @option opts [DateTime] :after Requests sent after timestamp. Min value is 30 days ago. Format ISO8601: yyyy-MM-ddTHH:mm:ss.SSSZZ 
    # @option opts [DateTime] :before Requests sent before timestamp. Min value is 30 days ago. Format ISO8601: yyyy-MM-ddTHH:mm:ss.SSSZZ 
    # @return [CallbackRequests]
    def subscriptions_search_callback_log(id, opts = {})
      data, _status_code, _headers = subscriptions_search_callback_log_with_http_info(id, opts)
      data
    end

    # Retrieve callback request details starting from newest.
    # @param id subscription identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_id identifier of the next page of subscriptions
    # @option opts [Integer] :limit number of elements to return
    # @option opts [String] :callback_status status of callback, whan absent all statuses will be returned
    # @option opts [DateTime] :after Requests sent after timestamp. Min value is 30 days ago. Format ISO8601: yyyy-MM-ddTHH:mm:ss.SSSZZ 
    # @option opts [DateTime] :before Requests sent before timestamp. Min value is 30 days ago. Format ISO8601: yyyy-MM-ddTHH:mm:ss.SSSZZ 
    # @return [Array<(CallbackRequests, Integer, Hash)>] CallbackRequests data, response status code and response headers
    def subscriptions_search_callback_log_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.subscriptions_search_callback_log ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.subscriptions_search_callback_log"
      end
      if @api_client.config.client_side_validation && opts[:'callback_status'] && !['successful', 'failed'].include?(opts[:'callback_status'])
        fail ArgumentError, 'invalid value for "callback_status", must be one of successful, failed'
      end
      # resource path
      local_var_path = '/subscriptions/{id}/callbacks-log'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_id'] = opts[:'page_id'] if !opts[:'page_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'callbackStatus'] = opts[:'callback_status'] if !opts[:'callback_status'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CallbackRequests' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#subscriptions_search_callback_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
