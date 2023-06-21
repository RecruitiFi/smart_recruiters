module SmartRecruiters
  class JobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Search jobs
    # Search jobs by params.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @option opts [String] :q full-text search query based on a job title; case insensitive; e.g. java developer
    # @option opts [Integer] :limit number of elements to return. max value is 100 (default to 10)
    # @option opts [Integer] :offset number of elements to skip while processing result; this method of paging is very slow and is deprecated, please use &#x60;pageId&#x60; instead (default to 0)
    # @option opts [String] :page_id unique identifier for next page of jobs - returned as &#x60;nextPageId&#x60; in previous page result
    # @option opts [Array<String>] :city city filter (part of the location object); can be used repeatedly; case sensitive; e.g. San Francisco
    # @option opts [Array<String>] :department department filter (by department label); can be used repeatedly; case sensitive; e.g. “Marketing”
    # @option opts [DateTime] :updated_after ISO8601-formatted time boundaries for the job update time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [DateTime] :last_activity_after ISO8601-formatted time boundaries for the job lastActivityOn time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ. lastActivityOn is updated when job is edited, new candidates apply or job is published. 
    # @option opts [String] :language Exceptions to the language code ISO format: * \&quot;en-GB\&quot; - \&quot;English - English (UK)\&quot; * \&quot;es-MX\&quot; - \&quot;Spanish - español (México)\&quot; * \&quot;fr-CA\&quot; - \&quot;French - français (Canada)\&quot; * \&quot;pt-BR\&quot; - \&quot;Portugal - português (Brasil)\&quot; * \&quot;zh-TW\&quot; - \&quot;Chinese (Traditional) - 中文 (香港)\&quot; * \&quot;zh-CN\&quot; - \&quot;Chinese (Simplified) - 中文 (简体)\&quot;   Value \&quot;pt-PT\&quot; is deprecated and will not work, use \&quot;pt\&quot; instead. 
    # @option opts [String] :status Status of a job 
    # @option opts [String] :posting_status Posting status of a job 
    # @return [Jobs]
    def jobs_all(opts = {})
      data, _status_code, _headers = jobs_all_with_http_info(opts)
      data
    end

    # Search jobs
    # Search jobs by params.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @option opts [String] :q full-text search query based on a job title; case insensitive; e.g. java developer
    # @option opts [Integer] :limit number of elements to return. max value is 100
    # @option opts [Integer] :offset number of elements to skip while processing result; this method of paging is very slow and is deprecated, please use &#x60;pageId&#x60; instead
    # @option opts [String] :page_id unique identifier for next page of jobs - returned as &#x60;nextPageId&#x60; in previous page result
    # @option opts [Array<String>] :city city filter (part of the location object); can be used repeatedly; case sensitive; e.g. San Francisco
    # @option opts [Array<String>] :department department filter (by department label); can be used repeatedly; case sensitive; e.g. “Marketing”
    # @option opts [DateTime] :updated_after ISO8601-formatted time boundaries for the job update time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [DateTime] :last_activity_after ISO8601-formatted time boundaries for the job lastActivityOn time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ. lastActivityOn is updated when job is edited, new candidates apply or job is published. 
    # @option opts [String] :language Exceptions to the language code ISO format: * \&quot;en-GB\&quot; - \&quot;English - English (UK)\&quot; * \&quot;es-MX\&quot; - \&quot;Spanish - español (México)\&quot; * \&quot;fr-CA\&quot; - \&quot;French - français (Canada)\&quot; * \&quot;pt-BR\&quot; - \&quot;Portugal - português (Brasil)\&quot; * \&quot;zh-TW\&quot; - \&quot;Chinese (Traditional) - 中文 (香港)\&quot; * \&quot;zh-CN\&quot; - \&quot;Chinese (Simplified) - 中文 (简体)\&quot;   Value \&quot;pt-PT\&quot; is deprecated and will not work, use \&quot;pt\&quot; instead. 
    # @option opts [String] :status Status of a job 
    # @option opts [String] :posting_status Posting status of a job 
    # @return [Array<(Jobs, Integer, Hash)>] Jobs data, response status code and response headers
    def jobs_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_all ...'
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      if @api_client.config.client_side_validation && opts[:'language'] && !['af', 'am', 'ar', 'az', 'bg', 'bn', 'ca', 'cs', 'cy', 'da', 'de', 'el', 'en', 'en-GB', 'es', 'es-MX', 'et', 'eu', 'fa', 'fi', 'fil', 'fr', 'fr-CA', 'ga', 'gl', 'gu', 'he', 'hi', 'hr', 'hu', 'hy', 'id', 'is', 'it', 'ja', 'ka', 'km', 'kn', 'ko', 'lo', 'lt', 'lv', 'ml', 'mn', 'mr', 'ms', 'ne', 'nl', 'no', 'pl', 'pt', 'pt-BR', 'ro', 'ru', 'si', 'sk', 'sl', 'sr', 'sv', 'sw', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'zh-CN', 'zh-TW', 'zu'].include?(opts[:'language'])
        fail ArgumentError, 'invalid value for "language", must be one of af, am, ar, az, bg, bn, ca, cs, cy, da, de, el, en, en-GB, es, es-MX, et, eu, fa, fi, fil, fr, fr-CA, ga, gl, gu, he, hi, hr, hu, hy, id, is, it, ja, ka, km, kn, ko, lo, lt, lv, ml, mn, mr, ms, ne, nl, no, pl, pt, pt-BR, ro, ru, si, sk, sl, sr, sv, sw, ta, te, tr, uk, ur, vi, zh-CN, zh-TW, zu'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['CREATED', 'SOURCING', 'FILLED', 'INTERVIEW', 'OFFER', 'CANCELLED', 'ON_HOLD'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of CREATED, SOURCING, FILLED, INTERVIEW, OFFER, CANCELLED, ON_HOLD'
      end
      if @api_client.config.client_side_validation && opts[:'posting_status'] && !['PUBLIC', 'INTERNAL', 'NOT_PUBLISHED', 'PRIVATE'].include?(opts[:'posting_status'])
        fail ArgumentError, 'invalid value for "posting_status", must be one of PUBLIC, INTERNAL, NOT_PUBLISHED, PRIVATE'
      end
      # resource path
      local_var_path = '/jobs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'pageId'] = opts[:'page_id'] if !opts[:'page_id'].nil?
      query_params[:'city'] = @api_client.build_collection_param(opts[:'city'], :multi) if !opts[:'city'].nil?
      query_params[:'department'] = @api_client.build_collection_param(opts[:'department'], :multi) if !opts[:'department'].nil?
      query_params[:'updatedAfter'] = opts[:'updated_after'] if !opts[:'updated_after'].nil?
      query_params[:'lastActivityAfter'] = opts[:'last_activity_after'] if !opts[:'last_activity_after'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'postingStatus'] = opts[:'posting_status'] if !opts[:'posting_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Jobs' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get latest approval request for given job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobApproval]
    def jobs_approvals_latest(job_id, opts = {})
      data, _status_code, _headers = jobs_approvals_latest_with_http_info(job_id, opts)
      data
    end

    # Get latest approval request for given job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobApproval, Integer, Hash)>] JobApproval data, response status code and response headers
    def jobs_approvals_latest_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_approvals_latest ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_approvals_latest"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/approvals/latest'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobApproval' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_approvals_latest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new job
    # Create a new job. Ignores all nonexistent job properties and job properties values.
    # @param [Hash] opts the optional parameters
    # @option opts [JobInput] :body Job object that needs to be created
    # @return [JobDetails]
    def jobs_create(opts = {})
      data, _status_code, _headers = jobs_create_with_http_info(opts)
      data
    end

    # Create a new job
    # Create a new job. Ignores all nonexistent job properties and job properties values.
    # @param [Hash] opts the optional parameters
    # @option opts [JobInput] :body Job object that needs to be created
    # @return [Array<(JobDetails, Integer, Hash)>] JobDetails data, response status code and response headers
    def jobs_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_create ...'
      end
      # resource path
      local_var_path = '/jobs'

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

      return_type = opts[:return_type] || 'JobDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get content of a job with a given id.
    # Get content of a job with a given id.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobDetails]
    def jobs_get(job_id, opts = {})
      data, _status_code, _headers = jobs_get_with_http_info(job_id, opts)
      data
    end

    # Get content of a job with a given id.
    # Get content of a job with a given id.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobDetails, Integer, Hash)>] JobDetails data, response status code and response headers
    def jobs_get_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_get ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_get"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update job headcount.
    # Update job headcount.
    # @param body 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [HeadcountUpdateAccepted]
    def jobs_headcount_update(body, job_id, opts = {})
      data, _status_code, _headers = jobs_headcount_update_with_http_info(body, job_id, opts)
      data
    end

    # Update job headcount.
    # Update job headcount.
    # @param body 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(HeadcountUpdateAccepted, Integer, Hash)>] HeadcountUpdateAccepted data, response status code and response headers
    def jobs_headcount_update_with_http_info(body, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_headcount_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.jobs_headcount_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_headcount_update"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/headcount'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'HeadcountUpdateAccepted' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_headcount_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add hiring team member of a job with a given id.
    # Add hiring team member of a job with a given id
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [HiringTeamMember] :body HiringTeamMember object
    # @return [HiringTeamMemberResponse]
    def jobs_hiring_team_add(job_id, opts = {})
      data, _status_code, _headers = jobs_hiring_team_add_with_http_info(job_id, opts)
      data
    end

    # Add hiring team member of a job with a given id.
    # Add hiring team member of a job with a given id
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [HiringTeamMember] :body HiringTeamMember object
    # @return [Array<(HiringTeamMemberResponse, Integer, Hash)>] HiringTeamMemberResponse data, response status code and response headers
    def jobs_hiring_team_add_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_hiring_team_add ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_hiring_team_add"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/hiring-team'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'HiringTeamMemberResponse' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_hiring_team_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get hiring team of a job with a given id.
    # Get hiring team of a job with a given id.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [HiringTeamMembers]
    def jobs_hiring_team_get(job_id, opts = {})
      data, _status_code, _headers = jobs_hiring_team_get_with_http_info(job_id, opts)
      data
    end

    # Get hiring team of a job with a given id.
    # Get hiring team of a job with a given id.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(HiringTeamMembers, Integer, Hash)>] HiringTeamMembers data, response status code and response headers
    def jobs_hiring_team_get_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_hiring_team_get ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_hiring_team_get"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/hiring-team'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'HiringTeamMembers' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_hiring_team_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes hiring team member of a job with a given id.
    # Removes hiring team member of a job with a given id.
    # @param job_id job identifier
    # @param user_id user identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def jobs_hiring_team_remove(job_id, user_id, opts = {})
      jobs_hiring_team_remove_with_http_info(job_id, user_id, opts)
      nil
    end

    # Removes hiring team member of a job with a given id.
    # Removes hiring team member of a job with a given id.
    # @param job_id job identifier
    # @param user_id user identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def jobs_hiring_team_remove_with_http_info(job_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_hiring_team_remove ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_hiring_team_remove"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling JobsApi.jobs_hiring_team_remove"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/hiring-team/{userId}'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        @api_client.config.logger.debug "API called: JobsApi#jobs_hiring_team_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find and list job ads for a given job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobAds]
    def jobs_jobads_all(job_id, opts = {})
      data, _status_code, _headers = jobs_jobads_all_with_http_info(job_id, opts)
      data
    end

    # Find and list job ads for a given job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobAds, Integer, Hash)>] JobAds data, response status code and response headers
    def jobs_jobads_all_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_jobads_all ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_jobads_all"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/jobads'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobAds' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_jobads_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new job ad
    # @param body job ad
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [JobAdItem]
    def jobs_jobads_create(body, job_id, opts = {})
      data, _status_code, _headers = jobs_jobads_create_with_http_info(body, job_id, opts)
      data
    end

    # Create a new job ad
    # @param body job ad
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobAdItem, Integer, Hash)>] JobAdItem data, response status code and response headers
    def jobs_jobads_create_with_http_info(body, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_jobads_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.jobs_jobads_create"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_jobads_create"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/jobads'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobAdItem' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_jobads_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a job ad
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobAdItem]
    def jobs_jobads_get(job_id, job_ad_id, opts = {})
      data, _status_code, _headers = jobs_jobads_get_with_http_info(job_id, job_ad_id, opts)
      data
    end

    # Get a job ad
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobAdItem, Integer, Hash)>] JobAdItem data, response status code and response headers
    def jobs_jobads_get_with_http_info(job_id, job_ad_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_jobads_get ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_jobads_get"
      end
      # verify the required parameter 'job_ad_id' is set
      if @api_client.config.client_side_validation && job_ad_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_ad_id' when calling JobsApi.jobs_jobads_get"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/jobads/{jobAdId}'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'jobAdId' + '}', job_ad_id.to_s)

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

      return_type = opts[:return_type] || 'JobAdItem' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_jobads_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List publications for a job ad
    # List publications for a job ad
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @option opts [BOOLEAN] :active_only publication status filter; when omitted, defaults to &#x27;true&#x27; (only active publications are returned); &#x27;false&#x27; returns active and inactive publications (default to true)
    # @return [PublicationList]
    def jobs_jobads_postings_all(job_id, job_ad_id, opts = {})
      data, _status_code, _headers = jobs_jobads_postings_all_with_http_info(job_id, job_ad_id, opts)
      data
    end

    # List publications for a job ad
    # List publications for a job ad
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @option opts [BOOLEAN] :active_only publication status filter; when omitted, defaults to &#x27;true&#x27; (only active publications are returned); &#x27;false&#x27; returns active and inactive publications
    # @return [Array<(PublicationList, Integer, Hash)>] PublicationList data, response status code and response headers
    def jobs_jobads_postings_all_with_http_info(job_id, job_ad_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_jobads_postings_all ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_jobads_postings_all"
      end
      # verify the required parameter 'job_ad_id' is set
      if @api_client.config.client_side_validation && job_ad_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_ad_id' when calling JobsApi.jobs_jobads_postings_all"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/jobads/{jobAdId}/postings'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'jobAdId' + '}', job_ad_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'activeOnly'] = opts[:'active_only'] if !opts[:'active_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PublicationList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_jobads_postings_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Publishes a job ad
    # Publishes a job ad to internal sources (Career Pages, Job Widget, Facebook App, WordPress Plugin, Posting API) and optionally to all free job aggregators.  By default it's set to publish to job aggregators  It reflects a Publish action available in the SmartRecruiters UI.  Note: Internal sources depend on a company's payment plan. 
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Publication] :body Publication object
    # @return [JobAdPublicationScheduled]
    def jobs_jobads_postings_create(job_id, job_ad_id, opts = {})
      data, _status_code, _headers = jobs_jobads_postings_create_with_http_info(job_id, job_ad_id, opts)
      data
    end

    # Publishes a job ad
    # Publishes a job ad to internal sources (Career Pages, Job Widget, Facebook App, WordPress Plugin, Posting API) and optionally to all free job aggregators.  By default it&#x27;s set to publish to job aggregators  It reflects a Publish action available in the SmartRecruiters UI.  Note: Internal sources depend on a company&#x27;s payment plan. 
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Publication] :body Publication object
    # @return [Array<(JobAdPublicationScheduled, Integer, Hash)>] JobAdPublicationScheduled data, response status code and response headers
    def jobs_jobads_postings_create_with_http_info(job_id, job_ad_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_jobads_postings_create ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_jobads_postings_create"
      end
      # verify the required parameter 'job_ad_id' is set
      if @api_client.config.client_side_validation && job_ad_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_ad_id' when calling JobsApi.jobs_jobads_postings_create"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/jobads/{jobAdId}/postings'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'jobAdId' + '}', job_ad_id.to_s)

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

      return_type = opts[:return_type] || 'JobAdPublicationScheduled' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_jobads_postings_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unpublish a job ad
    # Unpublishes a job ad from all sources.  **Unpublishing a default job ad will unpublish all other job ads within that job.** 
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @return [JobAdUnpublishScheduled]
    def jobs_jobads_postings_unpublish(job_id, job_ad_id, opts = {})
      data, _status_code, _headers = jobs_jobads_postings_unpublish_with_http_info(job_id, job_ad_id, opts)
      data
    end

    # Unpublish a job ad
    # Unpublishes a job ad from all sources.  **Unpublishing a default job ad will unpublish all other job ads within that job.** 
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobAdUnpublishScheduled, Integer, Hash)>] JobAdUnpublishScheduled data, response status code and response headers
    def jobs_jobads_postings_unpublish_with_http_info(job_id, job_ad_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_jobads_postings_unpublish ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_jobads_postings_unpublish"
      end
      # verify the required parameter 'job_ad_id' is set
      if @api_client.config.client_side_validation && job_ad_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_ad_id' when calling JobsApi.jobs_jobads_postings_unpublish"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/jobads/{jobAdId}/postings'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'jobAdId' + '}', job_ad_id.to_s)

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

      return_type = opts[:return_type] || 'JobAdUnpublishScheduled' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_jobads_postings_unpublish\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a job ad
    # Enables you to update an existing job ad. NOTE: In order for a job ad changes to be reflected on internal sources (Career Sites, Job Widgets etc.) and Job Aggregators, you need to Publish the job ad after making an update. 
    # @param body job ad
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @return [JobAdItem]
    def jobs_jobads_update(body, job_id, job_ad_id, opts = {})
      data, _status_code, _headers = jobs_jobads_update_with_http_info(body, job_id, job_ad_id, opts)
      data
    end

    # Update a job ad
    # Enables you to update an existing job ad. NOTE: In order for a job ad changes to be reflected on internal sources (Career Sites, Job Widgets etc.) and Job Aggregators, you need to Publish the job ad after making an update. 
    # @param body job ad
    # @param job_id job identifier
    # @param job_ad_id job ad identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobAdItem, Integer, Hash)>] JobAdItem data, response status code and response headers
    def jobs_jobads_update_with_http_info(body, job_id, job_ad_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_jobads_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.jobs_jobads_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_jobads_update"
      end
      # verify the required parameter 'job_ad_id' is set
      if @api_client.config.client_side_validation && job_ad_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_ad_id' when calling JobsApi.jobs_jobads_update"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/jobads/{jobAdId}'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'jobAdId' + '}', job_ad_id.to_s)

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

      return_type = opts[:return_type] || 'JobAdItem' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_jobads_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get note of a job.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobNote]
    def jobs_notes_get(job_id, opts = {})
      data, _status_code, _headers = jobs_notes_get_with_http_info(job_id, opts)
      data
    end

    # Get note of a job.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobNote, Integer, Hash)>] JobNote data, response status code and response headers
    def jobs_notes_get_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_notes_get ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_notes_get"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/note'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobNote' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_notes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update note of a job.
    # Update note of a job.
    # @param body 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [JobNote]
    def jobs_notes_update(body, job_id, opts = {})
      data, _status_code, _headers = jobs_notes_update_with_http_info(body, job_id, opts)
      data
    end

    # Update note of a job.
    # Update note of a job.
    # @param body 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobNote, Integer, Hash)>] JobNote data, response status code and response headers
    def jobs_notes_update_with_http_info(body, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_notes_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.jobs_notes_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_notes_update"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/note'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobNote' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_notes_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a job
    # Update a job. All attributes that are used when creating a job can be used. Ignores all nonexistent job properties and job properties values.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :body patch request
    # @return [JobDetails]
    def jobs_patch(job_id, opts = {})
      data, _status_code, _headers = jobs_patch_with_http_info(job_id, opts)
      data
    end

    # Update a job
    # Update a job. All attributes that are used when creating a job can be used. Ignores all nonexistent job properties and job properties values.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :body patch request
    # @return [Array<(JobDetails, Integer, Hash)>] JobDetails data, response status code and response headers
    def jobs_patch_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_patch ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_patch"
      end
      # resource path
      local_var_path = '/jobs/{jobId}'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Positions for a job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobPositions]
    def jobs_positions_all(job_id, opts = {})
      data, _status_code, _headers = jobs_positions_all_with_http_info(job_id, opts)
      data
    end

    # Positions for a job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobPositions, Integer, Hash)>] JobPositions data, response status code and response headers
    def jobs_positions_all_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_positions_all ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_positions_all"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/positions'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobPositions' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_positions_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new position for a job
    # @param body Position body object
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [JobPosition]
    def jobs_positions_create(body, job_id, opts = {})
      data, _status_code, _headers = jobs_positions_create_with_http_info(body, job_id, opts)
      data
    end

    # Create a new position for a job
    # @param body Position body object
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobPosition, Integer, Hash)>] JobPosition data, response status code and response headers
    def jobs_positions_create_with_http_info(body, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_positions_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.jobs_positions_create"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_positions_create"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/positions'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobPosition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_positions_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a single position
    # @param job_id job identifier
    # @param position_id position identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobPosition]
    def jobs_positions_get(job_id, position_id, opts = {})
      data, _status_code, _headers = jobs_positions_get_with_http_info(job_id, position_id, opts)
      data
    end

    # Get a single position
    # @param job_id job identifier
    # @param position_id position identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobPosition, Integer, Hash)>] JobPosition data, response status code and response headers
    def jobs_positions_get_with_http_info(job_id, position_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_positions_get ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_positions_get"
      end
      # verify the required parameter 'position_id' is set
      if @api_client.config.client_side_validation && position_id.nil?
        fail ArgumentError, "Missing the required parameter 'position_id' when calling JobsApi.jobs_positions_get"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/positions/{positionId}'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'positionId' + '}', position_id.to_s)

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

      return_type = opts[:return_type] || 'JobPosition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_positions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete position
    # @param job_id job identifier
    # @param position_id position identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def jobs_positions_remove(job_id, position_id, opts = {})
      jobs_positions_remove_with_http_info(job_id, position_id, opts)
      nil
    end

    # Delete position
    # @param job_id job identifier
    # @param position_id position identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def jobs_positions_remove_with_http_info(job_id, position_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_positions_remove ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_positions_remove"
      end
      # verify the required parameter 'position_id' is set
      if @api_client.config.client_side_validation && position_id.nil?
        fail ArgumentError, "Missing the required parameter 'position_id' when calling JobsApi.jobs_positions_remove"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/positions/{positionId}'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'positionId' + '}', position_id.to_s)

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
        @api_client.config.logger.debug "API called: JobsApi#jobs_positions_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update position
    # @param body Position body object
    # @param job_id job identifier
    # @param position_id position identifier
    # @param [Hash] opts the optional parameters
    # @return [JobPosition]
    def jobs_positions_update(body, job_id, position_id, opts = {})
      data, _status_code, _headers = jobs_positions_update_with_http_info(body, job_id, position_id, opts)
      data
    end

    # Update position
    # @param body Position body object
    # @param job_id job identifier
    # @param position_id position identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobPosition, Integer, Hash)>] JobPosition data, response status code and response headers
    def jobs_positions_update_with_http_info(body, job_id, position_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_positions_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.jobs_positions_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_positions_update"
      end
      # verify the required parameter 'position_id' is set
      if @api_client.config.client_side_validation && position_id.nil?
        fail ArgumentError, "Missing the required parameter 'position_id' when calling JobsApi.jobs_positions_update"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/positions/{positionId}'.sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'positionId' + '}', position_id.to_s)

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

      return_type = opts[:return_type] || 'JobPosition' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_positions_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find and list publications for a job
    # Find and list publications for a job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @option opts [BOOLEAN] :active_only publication status filter; defaults to &#x27;true&#x27; (only active publications are returned); &#x27;false&#x27; returns active and inactive publications (default to true)
    # @return [PublicationList]
    def jobs_publication_all(job_id, opts = {})
      data, _status_code, _headers = jobs_publication_all_with_http_info(job_id, opts)
      data
    end

    # Find and list publications for a job
    # Find and list publications for a job
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @option opts [BOOLEAN] :active_only publication status filter; defaults to &#x27;true&#x27; (only active publications are returned); &#x27;false&#x27; returns active and inactive publications
    # @return [Array<(PublicationList, Integer, Hash)>] PublicationList data, response status code and response headers
    def jobs_publication_all_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_publication_all ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_publication_all"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/publication'.sub('{' + 'jobId' + '}', job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'activeOnly'] = opts[:'active_only'] if !opts[:'active_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'PublicationList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_publication_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Publishes a default job ad
    # Publishes default job ad to internal sources and to free job aggregators.  It reflects a Publish action available in the SmartRecruiters UI.  Note:   Internal sources: Career Pages, Job Widget, Facebook App, WordPress Plugin, Posting API depend on a company's payment plan. 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Publication] :body Publication object
    # @return [nil]
    def jobs_publication_create(job_id, opts = {})
      jobs_publication_create_with_http_info(job_id, opts)
      nil
    end

    # Publishes a default job ad
    # Publishes default job ad to internal sources and to free job aggregators.  It reflects a Publish action available in the SmartRecruiters UI.  Note:   Internal sources: Career Pages, Job Widget, Facebook App, WordPress Plugin, Posting API depend on a company&#x27;s payment plan. 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Publication] :body Publication object
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def jobs_publication_create_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_publication_create ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_publication_create"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/publication'.sub('{' + 'jobId' + '}', job_id.to_s)

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
        @api_client.config.logger.debug "API called: JobsApi#jobs_publication_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unpublishes a job from all sources
    # Unpublishes a job from all sources
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def jobs_publication_unpublish(job_id, opts = {})
      jobs_publication_unpublish_with_http_info(job_id, opts)
      nil
    end

    # Unpublishes a job from all sources
    # Unpublishes a job from all sources
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def jobs_publication_unpublish_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_publication_unpublish ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_publication_unpublish"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/publication'.sub('{' + 'jobId' + '}', job_id.to_s)

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
        @api_client.config.logger.debug "API called: JobsApi#jobs_publication_unpublish\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Job status history
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content (default to en)
    # @return [JobStatusHistory]
    def jobs_status_history_get(job_id, opts = {})
      data, _status_code, _headers = jobs_status_history_get_with_http_info(job_id, opts)
      data
    end

    # Job status history
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language language of returned content
    # @return [Array<(JobStatusHistory, Integer, Hash)>] JobStatusHistory data, response status code and response headers
    def jobs_status_history_get_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_status_history_get ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_status_history_get"
      end
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !['af', 'am', 'ar', 'hy', 'az', 'eu', 'bn', 'bg', 'ca', 'zh-CN', 'zh-TW', 'hr', 'cs', 'da', 'nl', 'en-GB', 'en', 'et', 'fi', 'fr', 'fr-CA', 'gl', 'ka', 'de', 'el', 'gu', 'iw', 'hi', 'hu', 'is', 'id', 'ga', 'it', 'ja', 'kn', 'km', 'ko', 'lo', 'lv', 'lt', 'ms', 'ml', 'mr', 'mn', 'ne', 'no', 'fa', 'fil', 'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sr', 'si', 'sk', 'sl', 'es', 'es-MX', 'sw', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'cy', 'zu'].include?(opts[:'accept_language'])
        fail ArgumentError, 'invalid value for "accept_language", must be one of af, am, ar, hy, az, eu, bn, bg, ca, zh-CN, zh-TW, hr, cs, da, nl, en-GB, en, et, fi, fr, fr-CA, gl, ka, de, el, gu, iw, hi, hu, is, id, ga, it, ja, kn, km, ko, lo, lv, lt, ms, ml, mr, mn, ne, no, fa, fil, pl, pt, pt-BR, pt-PT, ro, ru, sr, si, sk, sl, es, es-MX, sw, sv, ta, te, tr, uk, ur, vi, cy, zu'
      end
      # resource path
      local_var_path = '/jobs/{jobId}/status/history'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobStatusHistory' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_status_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates job status
    # @param body 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [JobStatusUpdate]
    def jobs_status_update(body, job_id, opts = {})
      data, _status_code, _headers = jobs_status_update_with_http_info(body, job_id, opts)
      data
    end

    # Updates job status
    # @param body 
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobStatusUpdate, Integer, Hash)>] JobStatusUpdate data, response status code and response headers
    def jobs_status_update_with_http_info(body, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_status_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.jobs_status_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_status_update"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/status'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobStatusUpdate' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_status_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates job
    # Enables you to update job and it's jobAd. This operation requires passing a job id within path and job's new state within body of the PUT request. Ignores all nonexistent job properties and job properties values. However jobAd and all it's properties need to be provided. All jobAd's properties will be removed if not provided. Returns an updated job with jobAd.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [JobInput] :body Job that needs to be updated
    # @return [JobDetails]
    def jobs_update(job_id, opts = {})
      data, _status_code, _headers = jobs_update_with_http_info(job_id, opts)
      data
    end

    # Updates job
    # Enables you to update job and it&#x27;s jobAd. This operation requires passing a job id within path and job&#x27;s new state within body of the PUT request. Ignores all nonexistent job properties and job properties values. However jobAd and all it&#x27;s properties need to be provided. All jobAd&#x27;s properties will be removed if not provided. Returns an updated job with jobAd.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [JobInput] :body Job that needs to be updated
    # @return [Array<(JobDetails, Integer, Hash)>] JobDetails data, response status code and response headers
    def jobs_update_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_update ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobsApi.jobs_update"
      end
      # resource path
      local_var_path = '/jobs/{jobId}'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'JobDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
