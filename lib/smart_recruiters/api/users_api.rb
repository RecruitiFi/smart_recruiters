
module SmartRecruiters
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List access groups configured in your company
    # @param [Hash] opts the optional parameters
    # @return [AccessGroups]
    def access_groups_all(opts = {})
      data, _status_code, _headers = access_groups_all_with_http_info(opts)
      data
    end

    # List access groups configured in your company
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessGroups, Integer, Hash)>] AccessGroups data, response status code and response headers
    def access_groups_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.access_groups_all ...'
      end
      # resource path
      local_var_path = '/access-groups'

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

      return_type = opts[:return_type] || 'AccessGroups' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#access_groups_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Assign users to access group
    # @param access_group_id access group identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<UserId>] :body 
    # @return [AccessGroups]
    def access_groups_users_assign(access_group_id, opts = {})
      data, _status_code, _headers = access_groups_users_assign_with_http_info(access_group_id, opts)
      data
    end

    # Assign users to access group
    # @param access_group_id access group identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<UserId>] :body 
    # @return [Array<(AccessGroups, Integer, Hash)>] AccessGroups data, response status code and response headers
    def access_groups_users_assign_with_http_info(access_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.access_groups_users_assign ...'
      end
      # verify the required parameter 'access_group_id' is set
      if @api_client.config.client_side_validation && access_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'access_group_id' when calling UsersApi.access_groups_users_assign"
      end
      # resource path
      local_var_path = '/access-groups/{accessGroupId}/users'.sub('{' + 'accessGroupId' + '}', access_group_id.to_s)

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

      return_type = opts[:return_type] || 'AccessGroups' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#access_groups_users_assign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove user from access group
    # @param access_group_id access group identifier
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def access_groups_users_remove(access_group_id, id, opts = {})
      access_groups_users_remove_with_http_info(access_group_id, id, opts)
      nil
    end

    # Remove user from access group
    # @param access_group_id access group identifier
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def access_groups_users_remove_with_http_info(access_group_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.access_groups_users_remove ...'
      end
      # verify the required parameter 'access_group_id' is set
      if @api_client.config.client_side_validation && access_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'access_group_id' when calling UsersApi.access_groups_users_remove"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.access_groups_users_remove"
      end
      # resource path
      local_var_path = '/access-groups/{accessGroupId}/users/{id}'.sub('{' + 'accessGroupId' + '}', access_group_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: UsersApi#access_groups_users_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List system roles
    # @param [Hash] opts the optional parameters
    # @return [SystemRoles]
    def system_roles_all(opts = {})
      data, _status_code, _headers = system_roles_all_with_http_info(opts)
      data
    end

    # List system roles
    # @param [Hash] opts the optional parameters
    # @return [Array<(SystemRoles, Integer, Hash)>] SystemRoles data, response status code and response headers
    def system_roles_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.system_roles_all ...'
      end
      # resource path
      local_var_path = '/system-roles'

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

      return_type = opts[:return_type] || 'SystemRoles' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#system_roles_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Activate a user
    # Activate a user with given id. Users created via an API are not active. This method allows activating a user so he/she can sign in straight away. 
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_activation_activate(id, opts = {})
      users_activation_activate_with_http_info(id, opts)
      nil
    end

    # Activate a user
    # Activate a user with given id. Users created via an API are not active. This method allows activating a user so he/she can sign in straight away. 
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_activation_activate_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_activation_activate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_activation_activate"
      end
      # resource path
      local_var_path = '/users/{id}/activation'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: UsersApi#users_activation_activate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deactivate a user
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_activation_deactivate(id, opts = {})
      users_activation_deactivate_with_http_info(id, opts)
      nil
    end

    # Deactivate a user
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_activation_deactivate_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_activation_deactivate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_activation_deactivate"
      end
      # resource path
      local_var_path = '/users/{id}/activation'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: UsersApi#users_activation_deactivate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send an activation email to a user
    # Send an activation email to a user with given id. Users created via an API are not active. This method is an alternative to activating a user directly and allows sending an activation email in which a user will have to open a link and follow instructions on a screen to activate his/her account. 
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_activation_email_send(id, opts = {})
      users_activation_email_send_with_http_info(id, opts)
      nil
    end

    # Send an activation email to a user
    # Send an activation email to a user with given id. Users created via an API are not active. This method is an alternative to activating a user directly and allows sending an activation email in which a user will have to open a link and follow instructions on a screen to activate his/her account. 
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_activation_email_send_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_activation_email_send ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_activation_email_send"
      end
      # resource path
      local_var_path = '/users/{id}/activation-email'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_activation_email_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List users of your company
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q full-text search query based on firstName, lastName, email, externalData
    # @option opts [Integer] :limit number of elements to return. max value is 100 (default to 100)
    # @option opts [String] :page_id Unique identifier for the next page of users
    # @option opts [DateTime] :updated_after ISO8601-formatted time boundaries for the user update time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @return [Users]
    def users_all(opts = {})
      data, _status_code, _headers = users_all_with_http_info(opts)
      data
    end

    # List users of your company
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q full-text search query based on firstName, lastName, email, externalData
    # @option opts [Integer] :limit number of elements to return. max value is 100
    # @option opts [String] :page_id Unique identifier for the next page of users
    # @option opts [DateTime] :updated_after ISO8601-formatted time boundaries for the user update time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @return [Array<(Users, Integer, Hash)>] Users data, response status code and response headers
    def users_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_all ...'
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'pageId'] = opts[:'page_id'] if !opts[:'page_id'].nil?
      query_params[:'updatedAfter'] = opts[:'updated_after'] if !opts[:'updated_after'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Users' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update user avatar
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [nil]
    def users_avatar_update(id, opts = {})
      users_avatar_update_with_http_info(id, opts)
      nil
    end

    # Update user avatar
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_avatar_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_avatar_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_avatar_update"
      end
      # resource path
      local_var_path = '/users/{id}/avatar'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

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
        @api_client.config.logger.debug "API called: UsersApi#users_avatar_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new user.
    # @param [Hash] opts the optional parameters
    # @option opts [NewUser] :body User object to be created
    # @return [UserEntity]
    def users_create(opts = {})
      data, _status_code, _headers = users_create_with_http_info(opts)
      data
    end

    # Create a new user.
    # @param [Hash] opts the optional parameters
    # @option opts [NewUser] :body User object to be created
    # @return [Array<(UserEntity, Integer, Hash)>] UserEntity data, response status code and response headers
    def users_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_create ...'
      end
      # resource path
      local_var_path = '/users'

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

      return_type = opts[:return_type] || 'UserEntity' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get details of a user with given id
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [UserEntity]
    def users_get(id, opts = {})
      data, _status_code, _headers = users_get_with_http_info(id, opts)
      data
    end

    # Get details of a user with given id
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserEntity, Integer, Hash)>] UserEntity data, response status code and response headers
    def users_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_get"
      end
      # resource path
      local_var_path = '/users/{id}'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'UserEntity' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get details of my user
    # @param [Hash] opts the optional parameters
    # @return [UserEntity]
    def users_me(opts = {})
      data, _status_code, _headers = users_me_with_http_info(opts)
      data
    end

    # Get details of my user
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserEntity, Integer, Hash)>] UserEntity data, response status code and response headers
    def users_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_me ...'
      end
      # resource path
      local_var_path = '/users/me'

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

      return_type = opts[:return_type] || 'UserEntity' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send a password reset email to a user
    # Send password recovery instruction to the email address associated with a user with a given id. The password will not be reset until the user with a given id creates a new password. 
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_password_reset(id, opts = {})
      users_password_reset_with_http_info(id, opts)
      nil
    end

    # Send a password reset email to a user
    # Send password recovery instruction to the email address associated with a user with a given id. The password will not be reset until the user with a given id creates a new password. 
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_password_reset_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_password_reset ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_password_reset"
      end
      # resource path
      local_var_path = '/users/{id}/reset-password'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_password_reset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a user
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<null>] :body patch request (RFC 6902 - https://datatracker.ietf.org/doc/html/rfc6902)
    # @return [UserEntity]
    def users_update(id, opts = {})
      data, _status_code, _headers = users_update_with_http_info(id, opts)
      data
    end

    # Update a user
    # @param id user identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<null>] :body patch request (RFC 6902 - https://datatracker.ietf.org/doc/html/rfc6902)
    # @return [Array<(UserEntity, Integer, Hash)>] UserEntity data, response status code and response headers
    def users_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.users_update"
      end
      # resource path
      local_var_path = '/users/{id}'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'UserEntity' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#users_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
