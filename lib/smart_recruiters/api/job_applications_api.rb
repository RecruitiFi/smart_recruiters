module SmartRecruiters
  class JobApplicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a job application for given job application id.
    # @param job_application_id ID of job application
    # @param [Hash] opts the optional parameters
    # @return [JobApplication]
    def job_applications_get_by_id(job_application_id, opts = {})
      data, _status_code, _headers = job_applications_get_by_id_with_http_info(job_application_id, opts)
      data
    end

    # Get a job application for given job application id.
    # @param job_application_id ID of job application
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobApplication, Integer, Hash)>] JobApplication data, response status code and response headers
    def job_applications_get_by_id_with_http_info(job_application_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobApplicationsApi.job_applications_get_by_id ...'
      end
      # verify the required parameter 'job_application_id' is set
      if @api_client.config.client_side_validation && job_application_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_application_id' when calling JobApplicationsApi.job_applications_get_by_id"
      end
      # resource path
      local_var_path = '/job-applications/{jobApplicationId}'.sub('{' + 'jobApplicationId' + '}', job_application_id.to_s)

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

      return_type = opts[:return_type] || 'JobApplication' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobApplicationsApi#job_applications_get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
