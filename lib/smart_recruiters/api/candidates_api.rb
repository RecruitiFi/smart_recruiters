module SmartRecruiters
  class CandidatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new candidate and assign to a Talent Pool
    # Create a new candidate and assign to a Talent Pool.  **Tracking candidate source**  When adding a new candidate, it's very important you track its source appropriately. In order to associate a source with your app/integration, add below object to a candidate body object for this endpoint: ``` {   \"sourceDetails\": {     \"sourceTypeId\": \"string\",     \"sourceSubTypeId\": \"string\",     \"sourceId\": \"string\"   } } ``` **sourceTypeId** - it's a Source Type - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceSubTypeId** - it's a Source Subtype, an optional parameter - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceId** - it's a Source Id - available values for a given sourceTypeId can be found using [get /configuration/sources/:sourceTypeId/values](https://developers.smartrecruiters.com/reference/configurationsourcevaluesall-1) endpoint  NOTE: Not defining the source will default to **API** source.  NOTE II: In case you can't find an appropriate source to track against you can: * Create a custom source for each customer account separately on [this admin page](https://www.smartrecruiters.com/settings/configuration/custom-sources) (you need to be logged in as an admin to the customer account in order to view this page) * Request to [partners@smartrecruiters.com](mailto:partners@smartrecruiters.com) adding a standard source that will be available for all customers if your app/integration is productised (available to all SmartRecruiters customers) 
    # @param body Candidate object that needs to be created.
    # @param [Hash] opts the optional parameters
    # @return [CandidateDetails]
    def candidates_add(body, opts = {})
      data, _status_code, _headers = candidates_add_with_http_info(body, opts)
      data
    end

    # Create a new candidate and assign to a Talent Pool
    # Create a new candidate and assign to a Talent Pool.  **Tracking candidate source**  When adding a new candidate, it&#x27;s very important you track its source appropriately. In order to associate a source with your app/integration, add below object to a candidate body object for this endpoint: &#x60;&#x60;&#x60; {   \&quot;sourceDetails\&quot;: {     \&quot;sourceTypeId\&quot;: \&quot;string\&quot;,     \&quot;sourceSubTypeId\&quot;: \&quot;string\&quot;,     \&quot;sourceId\&quot;: \&quot;string\&quot;   } } &#x60;&#x60;&#x60; **sourceTypeId** - it&#x27;s a Source Type - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceSubTypeId** - it&#x27;s a Source Subtype, an optional parameter - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceId** - it&#x27;s a Source Id - available values for a given sourceTypeId can be found using [get /configuration/sources/:sourceTypeId/values](https://developers.smartrecruiters.com/reference/configurationsourcevaluesall-1) endpoint  NOTE: Not defining the source will default to **API** source.  NOTE II: In case you can&#x27;t find an appropriate source to track against you can: * Create a custom source for each customer account separately on [this admin page](https://www.smartrecruiters.com/settings/configuration/custom-sources) (you need to be logged in as an admin to the customer account in order to view this page) * Request to [partners@smartrecruiters.com](mailto:partners@smartrecruiters.com) adding a standard source that will be available for all customers if your app/integration is productised (available to all SmartRecruiters customers) 
    # @param body Candidate object that needs to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateDetails, Integer, Hash)>] CandidateDetails data, response status code and response headers
    def candidates_add_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_add ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CandidatesApi.candidates_add"
      end
      # resource path
      local_var_path = '/candidates'

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

      return_type = opts[:return_type] || 'CandidateDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new candidate and assign to a job
    # Create a new candidate and assign to a job.  **Tracking candidate source**  When adding a new candidate, it's very important you track its source appropriately. In order to associate a source with your app / integration, add the below object to a candidate body object for this endpoint: ``` {   \"sourceDetails\": {     \"sourceTypeId\": \"string\",     \"sourceSubTypeId\": \"string\",     \"sourceId\": \"string\"   } } ``` **sourceTypeId** - it's a Source Type - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceSubTypeId** - it's a Source Subtype, an optional parameter - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceId** - it's a Source Id - available values for a given sourceTypeId can be found using [get /configuration/sources/:sourceTypeId/values](https://developers.smartrecruiters.com/reference/configurationsourcevaluesall-1) endpoint  NOTE: Not defining the source will default to **API** source.  NOTE II: In case you can't find an appropriate source to track against you can: * Create a custom source for each customer account separately on [this admin page](https://www.smartrecruiters.com/settings/configuration/custom-sources\\) (you need to be logged in as an admin to the customer account in order to view this page) * Request to [partners@smartrecruiters.com](mailto:partners@smartrecruiters.com) adding a standard source that will be available for all customers if your app / integration is productised (available to all SmartRecruiters customers) 
    # @param body Candidate object that needs to be created.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateDetails]
    def candidates_add_to_job(body, job_id, opts = {})
      data, _status_code, _headers = candidates_add_to_job_with_http_info(body, job_id, opts)
      data
    end

    # Create a new candidate and assign to a job
    # Create a new candidate and assign to a job.  **Tracking candidate source**  When adding a new candidate, it&#x27;s very important you track its source appropriately. In order to associate a source with your app / integration, add the below object to a candidate body object for this endpoint: &#x60;&#x60;&#x60; {   \&quot;sourceDetails\&quot;: {     \&quot;sourceTypeId\&quot;: \&quot;string\&quot;,     \&quot;sourceSubTypeId\&quot;: \&quot;string\&quot;,     \&quot;sourceId\&quot;: \&quot;string\&quot;   } } &#x60;&#x60;&#x60; **sourceTypeId** - it&#x27;s a Source Type - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceSubTypeId** - it&#x27;s a Source Subtype, an optional parameter - available values can be found using [get /configuration/sources](https://developers.smartrecruiters.com/reference/configurationsourcetypes-1) endpoint  **sourceId** - it&#x27;s a Source Id - available values for a given sourceTypeId can be found using [get /configuration/sources/:sourceTypeId/values](https://developers.smartrecruiters.com/reference/configurationsourcevaluesall-1) endpoint  NOTE: Not defining the source will default to **API** source.  NOTE II: In case you can&#x27;t find an appropriate source to track against you can: * Create a custom source for each customer account separately on [this admin page](https://www.smartrecruiters.com/settings/configuration/custom-sources\\) (you need to be logged in as an admin to the customer account in order to view this page) * Request to [partners@smartrecruiters.com](mailto:partners@smartrecruiters.com) adding a standard source that will be available for all customers if your app / integration is productised (available to all SmartRecruiters customers) 
    # @param body Candidate object that needs to be created.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateDetails, Integer, Hash)>] CandidateDetails data, response status code and response headers
    def candidates_add_to_job_with_http_info(body, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_add_to_job ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CandidatesApi.candidates_add_to_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_add_to_job"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/candidates'.sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'CandidateDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_add_to_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Search candidates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q keyword search, for more infromation see [SmartRecruiters HelpCenter](https://help.smartrecruiters.com/Getting_Started/Platform/Searching_candidates_via_Candidate_API)
    # @option opts [Integer] :limit number of elements to return. max value is 100 (default to 10)
    # @option opts [String] :page_id page identifier of elements to return  The &#x60;pageId&#x60; param can be used to fetch multiple page response, in case the number of results is higher than max number of elements to return (specified in the &#x60;limit&#x60; parameter). The &#x60;pageId&#x60; should not be present when requesting the first page of results. The pageId of the following page is returned either in the &#x60;nextPageId&#x60; property, or is available in the HTTP header &#x60;Link&#x60; value of relation type &#x60;next&#x60;. Example of the &#x60;Link&#x60; header: &#x60;&#x60;&#x60; &lt;/candidates?limit&#x3D;10&amp;pageId&#x3D;SKYfn51wTboVGco6%2FvIsIC%2FYbyYP%2F4WgqHLArvCRtYhQEMCgvp1Zj0ya0wpjfKIblyGRcbHytMcvCehVazcjQA%3D%3D&gt;; rel&#x3D;\&quot;next\&quot; &#x60;&#x60;&#x60; 
    # @option opts [Array<String>] :job_id job filter to display candidates who applied for a job [id]; can be used repeatedly;
    # @option opts [Array<String>] :location location keyword search which looks up a string in a candidate’s location data; can be used repeatedly; case insensitive; e.g. Krakow
    # @option opts [Array<Integer>] :average_rating average rating filter to display candidates with a specific average rating (integer); can be used repeatedly; e.g. 4
    # @option opts [Array<String>] :status candidate’s status filter in a context of a job; can be used repeatedly
    # @option opts [Array<ConsentStatus>] :consent_status candidate’s consent status filter; can be used repeatedly
    # @option opts [String] :sub_status candidate’s sub-status filter in a context of a job. Works only in a correlation with a set value for the \&quot;status\&quot; field.
    # @option opts [Array<String>] :tag tag assigned to a candidate; can be used repeatedly; case insensitive; e.g. fluent english
    # @option opts [DateTime] :updated_after ISO8601-formatted time boundaries for the candidate update time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [String] :onboarding_status candidate&#x27;s onboarding status
    # @option opts [Array<String>] :property_id candidate&#x27;s property id (1-N) (default to [])
    # @option opts [Array<String>] :property_value_id candidate&#x27;s property value id (1-N) (default to [])
    # @option opts [Array<String>] :source_type candidate&#x27;s source type (1-N) (default to [])
    # @option opts [Array<String>] :source_sub_type candidate&#x27;s source subtype (1-N) (default to [])
    # @option opts [Array<String>] :source_value_id candidate&#x27;s source value id (1-N) (default to [])
    # @option opts [Array<String>] :question_category screening question category (1-N) (default to [])
    # @option opts [Array<String>] :question_field_id screening question field id (1-N) (default to [])
    # @option opts [Array<String>] :question_field_value_id screening question field value id (1-N) (default to [])
    # @return [Candidates]
    def candidates_all(opts = {})
      data, _status_code, _headers = candidates_all_with_http_info(opts)
      data
    end

    # Search candidates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q keyword search, for more infromation see [SmartRecruiters HelpCenter](https://help.smartrecruiters.com/Getting_Started/Platform/Searching_candidates_via_Candidate_API)
    # @option opts [Integer] :limit number of elements to return. max value is 100
    # @option opts [String] :page_id page identifier of elements to return  The &#x60;pageId&#x60; param can be used to fetch multiple page response, in case the number of results is higher than max number of elements to return (specified in the &#x60;limit&#x60; parameter). The &#x60;pageId&#x60; should not be present when requesting the first page of results. The pageId of the following page is returned either in the &#x60;nextPageId&#x60; property, or is available in the HTTP header &#x60;Link&#x60; value of relation type &#x60;next&#x60;. Example of the &#x60;Link&#x60; header: &#x60;&#x60;&#x60; &lt;/candidates?limit&#x3D;10&amp;pageId&#x3D;SKYfn51wTboVGco6%2FvIsIC%2FYbyYP%2F4WgqHLArvCRtYhQEMCgvp1Zj0ya0wpjfKIblyGRcbHytMcvCehVazcjQA%3D%3D&gt;; rel&#x3D;\&quot;next\&quot; &#x60;&#x60;&#x60; 
    # @option opts [Array<String>] :job_id job filter to display candidates who applied for a job [id]; can be used repeatedly;
    # @option opts [Array<String>] :location location keyword search which looks up a string in a candidate’s location data; can be used repeatedly; case insensitive; e.g. Krakow
    # @option opts [Array<Integer>] :average_rating average rating filter to display candidates with a specific average rating (integer); can be used repeatedly; e.g. 4
    # @option opts [Array<String>] :status candidate’s status filter in a context of a job; can be used repeatedly
    # @option opts [Array<ConsentStatus>] :consent_status candidate’s consent status filter; can be used repeatedly
    # @option opts [String] :sub_status candidate’s sub-status filter in a context of a job. Works only in a correlation with a set value for the \&quot;status\&quot; field.
    # @option opts [Array<String>] :tag tag assigned to a candidate; can be used repeatedly; case insensitive; e.g. fluent english
    # @option opts [DateTime] :updated_after ISO8601-formatted time boundaries for the candidate update time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [String] :onboarding_status candidate&#x27;s onboarding status
    # @option opts [Array<String>] :property_id candidate&#x27;s property id (1-N)
    # @option opts [Array<String>] :property_value_id candidate&#x27;s property value id (1-N)
    # @option opts [Array<String>] :source_type candidate&#x27;s source type (1-N)
    # @option opts [Array<String>] :source_sub_type candidate&#x27;s source subtype (1-N)
    # @option opts [Array<String>] :source_value_id candidate&#x27;s source value id (1-N)
    # @option opts [Array<String>] :question_category screening question category (1-N)
    # @option opts [Array<String>] :question_field_id screening question field id (1-N)
    # @option opts [Array<String>] :question_field_value_id screening question field value id (1-N)
    # @return [Array<(Candidates, Integer, Hash)>] Candidates data, response status code and response headers
    def candidates_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_all ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !opts[:'status'].all? { |item| ['LEAD', 'NEW', 'IN_REVIEW', 'INTERVIEW', 'OFFERED', 'HIRED', 'REJECTED', 'WITHDRAWN', 'TRANSFERRED'].include?(item) }
        fail ArgumentError, 'invalid value for "status", must include one of LEAD, NEW, IN_REVIEW, INTERVIEW, OFFERED, HIRED, REJECTED, WITHDRAWN, TRANSFERRED'
      end
      if @api_client.config.client_side_validation && opts[:'onboarding_status'] && !['READY_TO_ONBOARD', 'ONBOARDING_SUCCESSFUL', 'ONBOARDING_FAILED'].include?(opts[:'onboarding_status'])
        fail ArgumentError, 'invalid value for "onboarding_status", must be one of READY_TO_ONBOARD, ONBOARDING_SUCCESSFUL, ONBOARDING_FAILED'
      end
      # resource path
      local_var_path = '/candidates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'pageId'] = opts[:'page_id'] if !opts[:'page_id'].nil?
      query_params[:'jobId'] = @api_client.build_collection_param(opts[:'job_id'], :multi) if !opts[:'job_id'].nil?
      query_params[:'location'] = @api_client.build_collection_param(opts[:'location'], :multi) if !opts[:'location'].nil?
      query_params[:'averageRating'] = @api_client.build_collection_param(opts[:'average_rating'], :multi) if !opts[:'average_rating'].nil?
      query_params[:'status'] = @api_client.build_collection_param(opts[:'status'], :multi) if !opts[:'status'].nil?
      query_params[:'consentStatus'] = @api_client.build_collection_param(opts[:'consent_status'], :multi) if !opts[:'consent_status'].nil?
      query_params[:'subStatus'] = opts[:'sub_status'] if !opts[:'sub_status'].nil?
      query_params[:'tag'] = @api_client.build_collection_param(opts[:'tag'], :multi) if !opts[:'tag'].nil?
      query_params[:'updatedAfter'] = opts[:'updated_after'] if !opts[:'updated_after'].nil?
      query_params[:'onboardingStatus'] = opts[:'onboarding_status'] if !opts[:'onboarding_status'].nil?
      query_params[:'propertyId'] = @api_client.build_collection_param(opts[:'property_id'], :multi) if !opts[:'property_id'].nil?
      query_params[:'propertyValueId'] = @api_client.build_collection_param(opts[:'property_value_id'], :multi) if !opts[:'property_value_id'].nil?
      query_params[:'sourceType'] = @api_client.build_collection_param(opts[:'source_type'], :multi) if !opts[:'source_type'].nil?
      query_params[:'sourceSubType'] = @api_client.build_collection_param(opts[:'source_sub_type'], :multi) if !opts[:'source_sub_type'].nil?
      query_params[:'sourceValueId'] = @api_client.build_collection_param(opts[:'source_value_id'], :multi) if !opts[:'source_value_id'].nil?
      query_params[:'questionCategory'] = @api_client.build_collection_param(opts[:'question_category'], :multi) if !opts[:'question_category'].nil?
      query_params[:'questionFieldId'] = @api_client.build_collection_param(opts[:'question_field_id'], :multi) if !opts[:'question_field_id'].nil?
      query_params[:'questionFieldValueId'] = @api_client.build_collection_param(opts[:'question_field_value_id'], :multi) if !opts[:'question_field_value_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Candidates' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Attach files to a candidate.
    # Attach files to a candidate.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attachment_type 
    # @option opts [String] :file 
    # @return [Attachment]
    def candidates_attachments_add(id, opts = {})
      data, _status_code, _headers = candidates_attachments_add_with_http_info(id, opts)
      data
    end

    # Attach files to a candidate.
    # Attach files to a candidate.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attachment_type 
    # @option opts [String] :file 
    # @return [Array<(Attachment, Integer, Hash)>] Attachment data, response status code and response headers
    def candidates_attachments_add_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_attachments_add ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_attachments_add"
      end
      if @api_client.config.client_side_validation && opts[:'attachment_type'] && !['GENERIC_FILE', 'RESUME', 'COVER_LETTER'].include?(opts[:'attachment_type'])
        fail ArgumentError, 'invalid value for "attachment_type", must be one of GENERIC_FILE, RESUME, COVER_LETTER'
      end
      # resource path
      local_var_path = '/candidates/{id}/attachments'.sub('{' + 'id' + '}', id.to_s)

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
      form_params['attachmentType'] = opts[:'attachment_type'] if !opts[:'attachment_type'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Attachment' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_attachments_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Attach file to candidate in context of given job.
    # Attach file to candidate in context of given job.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attachment_type 
    # @option opts [String] :file 
    # @return [CandidateAttachmentForJob]
    def candidates_attachments_add_for_job(id, job_id, opts = {})
      data, _status_code, _headers = candidates_attachments_add_for_job_with_http_info(id, job_id, opts)
      data
    end

    # Attach file to candidate in context of given job.
    # Attach file to candidate in context of given job.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attachment_type 
    # @option opts [String] :file 
    # @return [Array<(CandidateAttachmentForJob, Integer, Hash)>] CandidateAttachmentForJob data, response status code and response headers
    def candidates_attachments_add_for_job_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_attachments_add_for_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_attachments_add_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_attachments_add_for_job"
      end
      if @api_client.config.client_side_validation && opts[:'attachment_type'] && !['GENERIC_FILE', 'RESUME', 'COVER_LETTER'].include?(opts[:'attachment_type'])
        fail ArgumentError, 'invalid value for "attachment_type", must be one of GENERIC_FILE, RESUME, COVER_LETTER'
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/attachments'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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
      form_params['attachmentType'] = opts[:'attachment_type'] if !opts[:'attachment_type'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidateAttachmentForJob' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_attachments_add_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete attachment.
    # Delete attachment.
    # @param attachment_id attachment identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_attachments_delete_for_job(attachment_id, opts = {})
      candidates_attachments_delete_for_job_with_http_info(attachment_id, opts)
      nil
    end

    # Delete attachment.
    # Delete attachment.
    # @param attachment_id attachment identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_attachments_delete_for_job_with_http_info(attachment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_attachments_delete_for_job ...'
      end
      # verify the required parameter 'attachment_id' is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_id' when calling CandidatesApi.candidates_attachments_delete_for_job"
      end
      # resource path
      local_var_path = '/candidates/attachments/{attachmentId}'.sub('{' + 'attachmentId' + '}', attachment_id.to_s)

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
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_attachments_delete_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a candidate's attachment.
    # Get a candidate's attachment.
    # @param id candidate identifier
    # @param attachment_id Identifier of an attachment
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_attachments_get(id, attachment_id, opts = {})
      candidates_attachments_get_with_http_info(id, attachment_id, opts)
      nil
    end

    # Get a candidate&#x27;s attachment.
    # Get a candidate&#x27;s attachment.
    # @param id candidate identifier
    # @param attachment_id Identifier of an attachment
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_attachments_get_with_http_info(id, attachment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_attachments_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_attachments_get"
      end
      # verify the required parameter 'attachment_id' is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_id' when calling CandidatesApi.candidates_attachments_get"
      end
      # resource path
      local_var_path = '/candidates/{id}/attachments/{attachmentId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'attachmentId' + '}', attachment_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_attachments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate's attachment.
    # Get candidate's attachment.
    # @param attachment_id attachment identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_attachments_get_for_job(attachment_id, opts = {})
      candidates_attachments_get_for_job_with_http_info(attachment_id, opts)
      nil
    end

    # Get candidate&#x27;s attachment.
    # Get candidate&#x27;s attachment.
    # @param attachment_id attachment identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_attachments_get_for_job_with_http_info(attachment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_attachments_get_for_job ...'
      end
      # verify the required parameter 'attachment_id' is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_id' when calling CandidatesApi.candidates_attachments_get_for_job"
      end
      # resource path
      local_var_path = '/candidates/attachments/{attachmentId}'.sub('{' + 'attachmentId' + '}', attachment_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_attachments_get_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list candidate's attachments.
    # Get list of candidate's attachments.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Attachments]
    def candidates_attachments_list(id, opts = {})
      data, _status_code, _headers = candidates_attachments_list_with_http_info(id, opts)
      data
    end

    # Get list candidate&#x27;s attachments.
    # Get list of candidate&#x27;s attachments.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Attachments, Integer, Hash)>] Attachments data, response status code and response headers
    def candidates_attachments_list_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_attachments_list ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_attachments_list"
      end
      # resource path
      local_var_path = '/candidates/{id}/attachments'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'Attachments' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_attachments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list of candidate's attachments in context of given job.
    # Get list of candidate's attachments in context of given job.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateAttachmentsForJob]
    def candidates_attachments_list_for_job(id, job_id, opts = {})
      data, _status_code, _headers = candidates_attachments_list_for_job_with_http_info(id, job_id, opts)
      data
    end

    # Get list of candidate&#x27;s attachments in context of given job.
    # Get list of candidate&#x27;s attachments in context of given job.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateAttachmentsForJob, Integer, Hash)>] CandidateAttachmentsForJob data, response status code and response headers
    def candidates_attachments_list_for_job_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_attachments_list_for_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_attachments_list_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_attachments_list_for_job"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/attachments'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'CandidateAttachmentsForJob' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_attachments_list_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Candidate consent decisions
    # Depending on the consent approach which a customer chooses, the response will either contain one candidates' consent decision - known as \"single consent\" - or contain one candidates' consent broken out by the data scopes which the customer has subscribed to - such as SmartRecruit and SmartCRM. This is referred to as \"separated consent\". Provided there is at least one pending consent request (without a decision) for a candidate, the response contains a date and time of the most recent of such consent requests.  Read more about GDPR tools on [SmartRecruiters HelpCenter](https://help.smartrecruiters.com/GDPR/GDPR_Tools_for_Companies) 
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateConsentDecisions]
    def candidates_consent_decisions(id, opts = {})
      data, _status_code, _headers = candidates_consent_decisions_with_http_info(id, opts)
      data
    end

    # Candidate consent decisions
    # Depending on the consent approach which a customer chooses, the response will either contain one candidates&#x27; consent decision - known as \&quot;single consent\&quot; - or contain one candidates&#x27; consent broken out by the data scopes which the customer has subscribed to - such as SmartRecruit and SmartCRM. This is referred to as \&quot;separated consent\&quot;. Provided there is at least one pending consent request (without a decision) for a candidate, the response contains a date and time of the most recent of such consent requests.  Read more about GDPR tools on [SmartRecruiters HelpCenter](https://help.smartrecruiters.com/GDPR/GDPR_Tools_for_Companies) 
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateConsentDecisions, Integer, Hash)>] CandidateConsentDecisions data, response status code and response headers
    def candidates_consent_decisions_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_consent_decisions ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_consent_decisions"
      end
      # resource path
      local_var_path = '/candidates/{id}/consents'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateConsentDecisions' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_consent_decisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Request consent from multiple candidates
    # Read more about GDPR tools on [SmartRecruiters HelpCenter](https://help.smartrecruiters.com/GDPR/GDPR_Tools_for_Companies) 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [ConsentRequestsResults]
    def candidates_consent_request_batch(opts = {})
      data, _status_code, _headers = candidates_consent_request_batch_with_http_info(opts)
      data
    end

    # Request consent from multiple candidates
    # Read more about GDPR tools on [SmartRecruiters HelpCenter](https://help.smartrecruiters.com/GDPR/GDPR_Tools_for_Companies) 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [Array<(ConsentRequestsResults, Integer, Hash)>] ConsentRequestsResults data, response status code and response headers
    def candidates_consent_request_batch_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_consent_request_batch ...'
      end
      # resource path
      local_var_path = '/candidates/consent-requests'

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

      return_type = opts[:return_type] || 'ConsentRequestsResults' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_consent_request_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Status of candidate consent
    # Get candidate consent status
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateConsentStatus]
    def candidates_consent_status(id, opts = {})
      data, _status_code, _headers = candidates_consent_status_with_http_info(id, opts)
      data
    end

    # Status of candidate consent
    # Get candidate consent status
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateConsentStatus, Integer, Hash)>] CandidateConsentStatus data, response status code and response headers
    def candidates_consent_status_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_consent_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_consent_status"
      end
      # resource path
      local_var_path = '/candidates/{id}/consent'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateConsentStatus' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_consent_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Candidate
    # Delete candidate
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_delete(id, opts = {})
      candidates_delete_with_http_info(id, opts)
      nil
    end

    # Delete Candidate
    # Delete candidate
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_delete"
      end
      # resource path
      local_var_path = '/candidates/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get details of a candidate
    # Get details of a candidate
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateDetails]
    def candidates_get(id, opts = {})
      data, _status_code, _headers = candidates_get_with_http_info(id, opts)
      data
    end

    # Get details of a candidate
    # Get details of a candidate
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateDetails, Integer, Hash)>] CandidateDetails data, response status code and response headers
    def candidates_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_get"
      end
      # resource path
      local_var_path = '/candidates/{id}'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get details of a candidate's application to a job
    # Get details of a candidate's application to a job
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Application]
    def candidates_get_application(id, job_id, opts = {})
      data, _status_code, _headers = candidates_get_application_with_http_info(id, job_id, opts)
      data
    end

    # Get details of a candidate&#x27;s application to a job
    # Get details of a candidate&#x27;s application to a job
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Application, Integer, Hash)>] Application data, response status code and response headers
    def candidates_get_application_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_get_application ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_get_application"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_get_application"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'Application' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_get_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Onboarding Status for a candidate
    # Get Onboarding Status for a candidate. Please use `GET /candidates/{id}/jobs/{jobId}/onboardingStatus` instead.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [OnboardingStatus]
    def candidates_onboarding_get(id, opts = {})
      data, _status_code, _headers = candidates_onboarding_get_with_http_info(id, opts)
      data
    end

    # Get Onboarding Status for a candidate
    # Get Onboarding Status for a candidate. Please use &#x60;GET /candidates/{id}/jobs/{jobId}/onboardingStatus&#x60; instead.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(OnboardingStatus, Integer, Hash)>] OnboardingStatus data, response status code and response headers
    def candidates_onboarding_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_onboarding_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_onboarding_get"
      end
      # resource path
      local_var_path = '/candidates/{id}/onboardingStatus'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'OnboardingStatus' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_onboarding_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Onboarding Status for a candidate associated with given job
    # Get Onboarding Status for a candidate associated with given job.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [OnboardingStatus]
    def candidates_onboarding_get_for_job(id, job_id, opts = {})
      data, _status_code, _headers = candidates_onboarding_get_for_job_with_http_info(id, job_id, opts)
      data
    end

    # Get Onboarding Status for a candidate associated with given job
    # Get Onboarding Status for a candidate associated with given job.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(OnboardingStatus, Integer, Hash)>] OnboardingStatus data, response status code and response headers
    def candidates_onboarding_get_for_job_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_onboarding_get_for_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_onboarding_get_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_onboarding_get_for_job"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/onboardingStatus'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'OnboardingStatus' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_onboarding_get_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set Onboarding Status for a candidate
    # Set Onboarding Status for a candidate. Please use `PUT /candidates/{id}/jobs/{jobId}/onboardingStatus` instead.
    # @param body Onboarding status.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_onboarding_update(body, id, opts = {})
      candidates_onboarding_update_with_http_info(body, id, opts)
      nil
    end

    # Set Onboarding Status for a candidate
    # Set Onboarding Status for a candidate. Please use &#x60;PUT /candidates/{id}/jobs/{jobId}/onboardingStatus&#x60; instead.
    # @param body Onboarding status.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_onboarding_update_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_onboarding_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CandidatesApi.candidates_onboarding_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_onboarding_update"
      end
      # resource path
      local_var_path = '/candidates/{id}/onboardingStatus'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_onboarding_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets Onboarding Status for a candidate associated with given job
    # Sets Onboarding Status for a candidate associated with given job.
    # @param body Onboarding status.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_onboarding_update_for_job(body, id, job_id, opts = {})
      candidates_onboarding_update_for_job_with_http_info(body, id, job_id, opts)
      nil
    end

    # Sets Onboarding Status for a candidate associated with given job
    # Sets Onboarding Status for a candidate associated with given job.
    # @param body Onboarding status.
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_onboarding_update_for_job_with_http_info(body, id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_onboarding_update_for_job ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CandidatesApi.candidates_onboarding_update_for_job"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_onboarding_update_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_onboarding_update_for_job"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/onboardingStatus'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_onboarding_update_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate property values for a candidate
    # Please use `GET /candidates/{id}/jobs/{jobId}/properties` instead. Returns ``` {} ``` when there is no value set for a candidate property. 
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context context for candidate properties to display
    # @return [CandidateProperties]
    def candidates_properties_get(id, opts = {})
      data, _status_code, _headers = candidates_properties_get_with_http_info(id, opts)
      data
    end

    # Get candidate property values for a candidate
    # Please use &#x60;GET /candidates/{id}/jobs/{jobId}/properties&#x60; instead. Returns &#x60;&#x60;&#x60; {} &#x60;&#x60;&#x60; when there is no value set for a candidate property. 
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context context for candidate properties to display
    # @return [Array<(CandidateProperties, Integer, Hash)>] CandidateProperties data, response status code and response headers
    def candidates_properties_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_properties_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_properties_get"
      end
      if @api_client.config.client_side_validation && opts[:'context'] && !['PROFILE', 'OFFER_FORM', 'HIRE_FORM', 'OFFER_APPROVAL_FORM'].include?(opts[:'context'])
        fail ArgumentError, 'invalid value for "context", must be one of PROFILE, OFFER_FORM, HIRE_FORM, OFFER_APPROVAL_FORM'
      end
      # resource path
      local_var_path = '/candidates/{id}/properties'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidateProperties' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_properties_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate property values for a candidate's job
    # Returns ``` {} ``` when there is no value set for a candidate property. 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context context for candidate properties to display
    # @return [CandidateProperties]
    def candidates_properties_get_for_job(id, job_id, opts = {})
      data, _status_code, _headers = candidates_properties_get_for_job_with_http_info(id, job_id, opts)
      data
    end

    # Get candidate property values for a candidate&#x27;s job
    # Returns &#x60;&#x60;&#x60; {} &#x60;&#x60;&#x60; when there is no value set for a candidate property. 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context context for candidate properties to display
    # @return [Array<(CandidateProperties, Integer, Hash)>] CandidateProperties data, response status code and response headers
    def candidates_properties_get_for_job_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_properties_get_for_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_properties_get_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_properties_get_for_job"
      end
      if @api_client.config.client_side_validation && opts[:'context'] && !['PROFILE', 'OFFER_FORM', 'HIRE_FORM', 'OFFER_APPROVAL_FORM'].include?(opts[:'context'])
        fail ArgumentError, 'invalid value for "context", must be one of PROFILE, OFFER_FORM, HIRE_FORM, OFFER_APPROVAL_FORM'
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/properties'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidateProperties' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_properties_get_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add/update candidate properties values
    # Set candidate properties values for the candidate's job  Below you can find a list of value examples, dependent on different candidate property types.  ### BOOLEAN  ``` [{ \"id\": \"propertyId\", \"value\": true }] ```  Value has to be `true` or `false`.  ### COUNTRY  ``` [{ \"id\": \"propertyId\", \"value\": \"us\" }] ```  Value has to be lowercase string in ISO 3166-1 alpha-2 format.  ### CURRENCY  ``` [{ \"id\": \"propertyId\",    \"value\": {      \"code\": \"GBP\",      \"value\": 23232    }  }] ```  Code of value is a currency code in ISO 4217 format.  ### DATE  ``` [{ \"id\": \"propertyId\", \"value\": \"2015-11-17T23:00:00.000Z\" }] ```  ### NUMBER, PERCENT  ``` [{ \"id\": \"propertyId\", \"value\": 42 }] ```  ### REGION  ``` [{ \"id\": \"propertyId\", \"value\": \"us-wa\" }] ```  Value has to be lowercase string in ISO 3166-2 compatible format.  ### SINGLE_SELECT  ``` [{ \"id\": \"propertyId\", \"value\": \"f6fe768f-b5e6-4794-9938-c2f42ab0a572\" }] ```  Value has to be an id of candidate property value (provided by `GET /configuration/candidate-properties/{propertyId}/values`).  ### TEXT  ``` [{ \"id\": \"propertyId\", \"value\": \"Example text\" }] ```  ### USER  ``` [{ \"id\": \"propertyId\", \"value\": \"50fe861de4b00265edec6775\" }] ```  Value has to be a valid user id  ### Resetting a value  To reset a value for any of the above types, please pass:  ``` [{\"id\": \"propertyId\"}] ``` 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CandidatePropertyValue>] :body 
    # @return [nil]
    def candidates_properties_values_batch_update_for_job(id, job_id, opts = {})
      candidates_properties_values_batch_update_for_job_with_http_info(id, job_id, opts)
      nil
    end

    # Add/update candidate properties values
    # Set candidate properties values for the candidate&#x27;s job  Below you can find a list of value examples, dependent on different candidate property types.  ### BOOLEAN  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: true }] &#x60;&#x60;&#x60;  Value has to be &#x60;true&#x60; or &#x60;false&#x60;.  ### COUNTRY  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: \&quot;us\&quot; }] &#x60;&#x60;&#x60;  Value has to be lowercase string in ISO 3166-1 alpha-2 format.  ### CURRENCY  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;,    \&quot;value\&quot;: {      \&quot;code\&quot;: \&quot;GBP\&quot;,      \&quot;value\&quot;: 23232    }  }] &#x60;&#x60;&#x60;  Code of value is a currency code in ISO 4217 format.  ### DATE  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: \&quot;2015-11-17T23:00:00.000Z\&quot; }] &#x60;&#x60;&#x60;  ### NUMBER, PERCENT  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: 42 }] &#x60;&#x60;&#x60;  ### REGION  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: \&quot;us-wa\&quot; }] &#x60;&#x60;&#x60;  Value has to be lowercase string in ISO 3166-2 compatible format.  ### SINGLE_SELECT  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: \&quot;f6fe768f-b5e6-4794-9938-c2f42ab0a572\&quot; }] &#x60;&#x60;&#x60;  Value has to be an id of candidate property value (provided by &#x60;GET /configuration/candidate-properties/{propertyId}/values&#x60;).  ### TEXT  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: \&quot;Example text\&quot; }] &#x60;&#x60;&#x60;  ### USER  &#x60;&#x60;&#x60; [{ \&quot;id\&quot;: \&quot;propertyId\&quot;, \&quot;value\&quot;: \&quot;50fe861de4b00265edec6775\&quot; }] &#x60;&#x60;&#x60;  Value has to be a valid user id  ### Resetting a value  To reset a value for any of the above types, please pass:  &#x60;&#x60;&#x60; [{\&quot;id\&quot;: \&quot;propertyId\&quot;}] &#x60;&#x60;&#x60; 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CandidatePropertyValue>] :body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_properties_values_batch_update_for_job_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_properties_values_batch_update_for_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_properties_values_batch_update_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_properties_values_batch_update_for_job"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/properties'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_properties_values_batch_update_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add/update candidate property value
    # Please use `PUT /candidates/{id}/jobs/{jobId}/properties` instead. Set a candidate property value for the candidate. Below you can find a list of value examples, dependent on different candidate property types. * **BOOLEAN** ``` { \"value\": true } ``` Value has to be `true` or `false`. * **COUNTRY** ``` { \"value\": \"us\" } ``` Value has to be lowercase string in ISO 3166-1 alpha-2 format. * **CURRENCY** ``` {   \"value\": {     \"code\": \"GBP\",     \"value\": 23232   } } ``` Code of value is a currency code in ISO 4217 format. * **DATE** ``` { \"value\": \"2015-11-17T23:00:00.000Z\" } ``` * **NUMBER, PERCENT** ``` { \"value\": 42 } ``` * **REGION** ``` { \"value\": \"us-wa\" } ``` Value has to be lowercase string in ISO 3166-2 compatible format. * **SINGLE_SELECT** ``` { \"value\": \"f6fe768f-b5e6-4794-9938-c2f42ab0a572\" } ``` Value has to be an id of candidate property value (provided by GET /configuration/candidate-properties/{propertyId}/values). * **TEXT** ``` { \"value\": \"Example text\" } ``` * **USER** ``` { \"value\": \"50fe861de4b00265edec6775\" } ``` Value has to be a valid user id  To reset a value for any of the above types, please pass ``` {} ``` 
    # @param id candidate identifier
    # @param property_id Identifier of a Candidate Property
    # @param [Hash] opts the optional parameters
    # @option opts [CandidatePropertyInputValue] :body Input value of the candidate property.
    # @return [nil]
    def candidates_properties_values_update(id, property_id, opts = {})
      candidates_properties_values_update_with_http_info(id, property_id, opts)
      nil
    end

    # Add/update candidate property value
    # Please use &#x60;PUT /candidates/{id}/jobs/{jobId}/properties&#x60; instead. Set a candidate property value for the candidate. Below you can find a list of value examples, dependent on different candidate property types. * **BOOLEAN** &#x60;&#x60;&#x60; { \&quot;value\&quot;: true } &#x60;&#x60;&#x60; Value has to be &#x60;true&#x60; or &#x60;false&#x60;. * **COUNTRY** &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;us\&quot; } &#x60;&#x60;&#x60; Value has to be lowercase string in ISO 3166-1 alpha-2 format. * **CURRENCY** &#x60;&#x60;&#x60; {   \&quot;value\&quot;: {     \&quot;code\&quot;: \&quot;GBP\&quot;,     \&quot;value\&quot;: 23232   } } &#x60;&#x60;&#x60; Code of value is a currency code in ISO 4217 format. * **DATE** &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;2015-11-17T23:00:00.000Z\&quot; } &#x60;&#x60;&#x60; * **NUMBER, PERCENT** &#x60;&#x60;&#x60; { \&quot;value\&quot;: 42 } &#x60;&#x60;&#x60; * **REGION** &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;us-wa\&quot; } &#x60;&#x60;&#x60; Value has to be lowercase string in ISO 3166-2 compatible format. * **SINGLE_SELECT** &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;f6fe768f-b5e6-4794-9938-c2f42ab0a572\&quot; } &#x60;&#x60;&#x60; Value has to be an id of candidate property value (provided by GET /configuration/candidate-properties/{propertyId}/values). * **TEXT** &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;Example text\&quot; } &#x60;&#x60;&#x60; * **USER** &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;50fe861de4b00265edec6775\&quot; } &#x60;&#x60;&#x60; Value has to be a valid user id  To reset a value for any of the above types, please pass &#x60;&#x60;&#x60; {} &#x60;&#x60;&#x60; 
    # @param id candidate identifier
    # @param property_id Identifier of a Candidate Property
    # @param [Hash] opts the optional parameters
    # @option opts [CandidatePropertyInputValue] :body Input value of the candidate property.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_properties_values_update_with_http_info(id, property_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_properties_values_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_properties_values_update"
      end
      # verify the required parameter 'property_id' is set
      if @api_client.config.client_side_validation && property_id.nil?
        fail ArgumentError, "Missing the required parameter 'property_id' when calling CandidatesApi.candidates_properties_values_update"
      end
      # resource path
      local_var_path = '/candidates/{id}/properties/{propertyId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'propertyId' + '}', property_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_properties_values_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add/update candidate property value
    # Please use `PUT /candidates/{id}/jobs/{jobId}/properties` instead.  Set a candidate property value for the candidate.  Below you can find a list of value examples, dependent on different candidate property types.  ### BOOLEAN  ``` { \"value\": true } ```  Value has to be `true` or `false`.  ### COUNTRY  ``` { \"value\": \"us\" } ```  Value has to be lowercase string in ISO 3166-1 alpha-2 format.  ### CURRENCY  ``` {   \"value\": {     \"code\": \"GBP\",     \"value\": 23232   } } ```  Code of value is a currency code in ISO 4217 format.  ### DATE  ``` { \"value\": \"2015-11-17T23:00:00.000Z\" } ```  ### NUMBER, PERCENT  ``` { \"value\": 42 } ```  ### REGION  ``` { \"value\": \"us-wa\" } ```  Value has to be lowercase string in ISO 3166-2 compatible format.  ### SINGLE_SELECT  ``` { \"value\": \"f6fe768f-b5e6-4794-9938-c2f42ab0a572\" } ```  Value has to be an id of candidate property value (provided by `GET /configuration/candidate-properties/{propertyId}/values`).  ### TEXT  ``` { \"value\": \"Example text\" } ```  ### USER  ``` { \"value\": \"50fe861de4b00265edec6775\" } ```  Value has to be a valid user id  ### Resetting a value  To reset a value for any of the above types, please pass:  ``` {} ``` 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param property_id Identifier of a Candidate Property
    # @param [Hash] opts the optional parameters
    # @option opts [CandidatePropertyInputValue] :body Input value of the candidate property.
    # @return [nil]
    def candidates_properties_values_update_for_job(id, job_id, property_id, opts = {})
      candidates_properties_values_update_for_job_with_http_info(id, job_id, property_id, opts)
      nil
    end

    # Add/update candidate property value
    # Please use &#x60;PUT /candidates/{id}/jobs/{jobId}/properties&#x60; instead.  Set a candidate property value for the candidate.  Below you can find a list of value examples, dependent on different candidate property types.  ### BOOLEAN  &#x60;&#x60;&#x60; { \&quot;value\&quot;: true } &#x60;&#x60;&#x60;  Value has to be &#x60;true&#x60; or &#x60;false&#x60;.  ### COUNTRY  &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;us\&quot; } &#x60;&#x60;&#x60;  Value has to be lowercase string in ISO 3166-1 alpha-2 format.  ### CURRENCY  &#x60;&#x60;&#x60; {   \&quot;value\&quot;: {     \&quot;code\&quot;: \&quot;GBP\&quot;,     \&quot;value\&quot;: 23232   } } &#x60;&#x60;&#x60;  Code of value is a currency code in ISO 4217 format.  ### DATE  &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;2015-11-17T23:00:00.000Z\&quot; } &#x60;&#x60;&#x60;  ### NUMBER, PERCENT  &#x60;&#x60;&#x60; { \&quot;value\&quot;: 42 } &#x60;&#x60;&#x60;  ### REGION  &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;us-wa\&quot; } &#x60;&#x60;&#x60;  Value has to be lowercase string in ISO 3166-2 compatible format.  ### SINGLE_SELECT  &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;f6fe768f-b5e6-4794-9938-c2f42ab0a572\&quot; } &#x60;&#x60;&#x60;  Value has to be an id of candidate property value (provided by &#x60;GET /configuration/candidate-properties/{propertyId}/values&#x60;).  ### TEXT  &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;Example text\&quot; } &#x60;&#x60;&#x60;  ### USER  &#x60;&#x60;&#x60; { \&quot;value\&quot;: \&quot;50fe861de4b00265edec6775\&quot; } &#x60;&#x60;&#x60;  Value has to be a valid user id  ### Resetting a value  To reset a value for any of the above types, please pass:  &#x60;&#x60;&#x60; {} &#x60;&#x60;&#x60; 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param property_id Identifier of a Candidate Property
    # @param [Hash] opts the optional parameters
    # @option opts [CandidatePropertyInputValue] :body Input value of the candidate property.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_properties_values_update_for_job_with_http_info(id, job_id, property_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_properties_values_update_for_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_properties_values_update_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_properties_values_update_for_job"
      end
      # verify the required parameter 'property_id' is set
      if @api_client.config.client_side_validation && property_id.nil?
        fail ArgumentError, "Missing the required parameter 'property_id' when calling CandidatesApi.candidates_properties_values_update_for_job"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/properties/{propertyId}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s).sub('{' + 'propertyId' + '}', property_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_properties_values_update_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Parse a resume, create a candidate and assign to a Talent Pool.
    # Parse a resume, create a candidate and assign to a Talent Pool.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_type_id 
    # @option opts [String] :source_sub_type_id 
    # @option opts [String] :source_id 
    # @option opts [BOOLEAN] :internal 
    # @option opts [String] :file 
    # @return [CandidateDetails]
    def candidates_resume_add(opts = {})
      data, _status_code, _headers = candidates_resume_add_with_http_info(opts)
      data
    end

    # Parse a resume, create a candidate and assign to a Talent Pool.
    # Parse a resume, create a candidate and assign to a Talent Pool.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_type_id 
    # @option opts [String] :source_sub_type_id 
    # @option opts [String] :source_id 
    # @option opts [BOOLEAN] :internal 
    # @option opts [String] :file 
    # @return [Array<(CandidateDetails, Integer, Hash)>] CandidateDetails data, response status code and response headers
    def candidates_resume_add_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_resume_add ...'
      end
      # resource path
      local_var_path = '/candidates/cv'

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
      form_params['sourceTypeId'] = opts[:'source_type_id'] if !opts[:'source_type_id'].nil?
      form_params['sourceSubTypeId'] = opts[:'source_sub_type_id'] if !opts[:'source_sub_type_id'].nil?
      form_params['sourceId'] = opts[:'source_id'] if !opts[:'source_id'].nil?
      form_params['internal'] = opts[:'internal'] if !opts[:'internal'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidateDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_resume_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Parse a resume, create a candidate and assign to a job.
    # Parse a resume, create a candidate and assign to a job.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_type_id 
    # @option opts [String] :source_sub_type_id 
    # @option opts [String] :source_id 
    # @option opts [BOOLEAN] :internal 
    # @option opts [String] :file 
    # @return [CandidateDetails]
    def candidates_resume_add_to_job(job_id, opts = {})
      data, _status_code, _headers = candidates_resume_add_to_job_with_http_info(job_id, opts)
      data
    end

    # Parse a resume, create a candidate and assign to a job.
    # Parse a resume, create a candidate and assign to a job.
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_type_id 
    # @option opts [String] :source_sub_type_id 
    # @option opts [String] :source_id 
    # @option opts [BOOLEAN] :internal 
    # @option opts [String] :file 
    # @return [Array<(CandidateDetails, Integer, Hash)>] CandidateDetails data, response status code and response headers
    def candidates_resume_add_to_job_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_resume_add_to_job ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_resume_add_to_job"
      end
      # resource path
      local_var_path = '/jobs/{jobId}/candidates/cv'.sub('{' + 'jobId' + '}', job_id.to_s)

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
      form_params['sourceTypeId'] = opts[:'source_type_id'] if !opts[:'source_type_id'].nil?
      form_params['sourceSubTypeId'] = opts[:'source_sub_type_id'] if !opts[:'source_sub_type_id'].nil?
      form_params['sourceId'] = opts[:'source_id'] if !opts[:'source_id'].nil?
      form_params['internal'] = opts[:'internal'] if !opts[:'internal'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CandidateDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_resume_add_to_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate screening answers for a candidate's job
    # Returns candidate screening question answers for a candidate's job. Returns an empty array when there is no screening answers for given candidate's job.  UUID in question category indicates custom question. Other value indicates predefined library question.  In order to create human readable format of answers please use label properties. Ignore labels for answers with single field. Based on labels from included example you can get following text:  ```text Do you have a current driver's license?  - No  Free text question  - Long text answer for free text questions  Checkbox question  - Confirmed  Legacy acknowledgment question - replaced by checkbox  - Confirmed  Gender, Race and Ethnicity [(definitions)](https://smartrecruiters.com/oneclick/static/html/en/eeoGeneral.html)  - Gender: Male  - Race/Ethnicity: Prefer not to answer  Currency question  - 1234  Multiple choice dropdown  - third value, second value, first value  Languages  1)  - Language: English  - Proficiency level: Advanced  2)  - Language: Spanish  - Proficiency level: Beginner  3)  - Language: French  - Proficiency level: Intermediate  What are your preferred work shifts? 1)  - Day: Weekdays  - From: 08:00 AM  - To: 04:00 PM 2)  - Day: Weekdays  - From: 10:00 AM  - To: 02:00 PM  Your Name  - John ``` 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [ScreeningAnswers]
    def candidates_screening_answers_get(id, job_id, opts = {})
      data, _status_code, _headers = candidates_screening_answers_get_with_http_info(id, job_id, opts)
      data
    end

    # Get candidate screening answers for a candidate&#x27;s job
    # Returns candidate screening question answers for a candidate&#x27;s job. Returns an empty array when there is no screening answers for given candidate&#x27;s job.  UUID in question category indicates custom question. Other value indicates predefined library question.  In order to create human readable format of answers please use label properties. Ignore labels for answers with single field. Based on labels from included example you can get following text:  &#x60;&#x60;&#x60;text Do you have a current driver&#x27;s license?  - No  Free text question  - Long text answer for free text questions  Checkbox question  - Confirmed  Legacy acknowledgment question - replaced by checkbox  - Confirmed  Gender, Race and Ethnicity [(definitions)](https://smartrecruiters.com/oneclick/static/html/en/eeoGeneral.html)  - Gender: Male  - Race/Ethnicity: Prefer not to answer  Currency question  - 1234  Multiple choice dropdown  - third value, second value, first value  Languages  1)  - Language: English  - Proficiency level: Advanced  2)  - Language: Spanish  - Proficiency level: Beginner  3)  - Language: French  - Proficiency level: Intermediate  What are your preferred work shifts? 1)  - Day: Weekdays  - From: 08:00 AM  - To: 04:00 PM 2)  - Day: Weekdays  - From: 10:00 AM  - To: 02:00 PM  Your Name  - John &#x60;&#x60;&#x60; 
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(ScreeningAnswers, Integer, Hash)>] ScreeningAnswers data, response status code and response headers
    def candidates_screening_answers_get_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_screening_answers_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_screening_answers_get"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_screening_answers_get"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/screening-answers'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'ScreeningAnswers' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_screening_answers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a candidate's source
    # Update a candidate's source
    # @param body Candidate source to be set
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_source_update(body, id, job_id, opts = {})
      candidates_source_update_with_http_info(body, id, job_id, opts)
      nil
    end

    # Update a candidate&#x27;s source
    # Update a candidate&#x27;s source
    # @param body Candidate source to be set
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_source_update_with_http_info(body, id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_source_update ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CandidatesApi.candidates_source_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_source_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_source_update"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/source'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_source_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate's status history
    # Get candidate's status history. Please use `GET /candidates/{id}/jobs/{jobId}/status/history` instead.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateStatusHistoryList]
    def candidates_status_history_get(id, opts = {})
      data, _status_code, _headers = candidates_status_history_get_with_http_info(id, opts)
      data
    end

    # Get candidate&#x27;s status history
    # Get candidate&#x27;s status history. Please use &#x60;GET /candidates/{id}/jobs/{jobId}/status/history&#x60; instead.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateStatusHistoryList, Integer, Hash)>] CandidateStatusHistoryList data, response status code and response headers
    def candidates_status_history_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_status_history_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_status_history_get"
      end
      # resource path
      local_var_path = '/candidates/{id}/status/history'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateStatusHistoryList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_status_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get candidate's status history for a candidate's job
    # Get candidate's status history for a candidate's job
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateStatusHistoryList]
    def candidates_status_history_get_for_job(id, job_id, opts = {})
      data, _status_code, _headers = candidates_status_history_get_for_job_with_http_info(id, job_id, opts)
      data
    end

    # Get candidate&#x27;s status history for a candidate&#x27;s job
    # Get candidate&#x27;s status history for a candidate&#x27;s job
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateStatusHistoryList, Integer, Hash)>] CandidateStatusHistoryList data, response status code and response headers
    def candidates_status_history_get_for_job_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_status_history_get_for_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_status_history_get_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_status_history_get_for_job"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/status/history'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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

      return_type = opts[:return_type] || 'CandidateStatusHistoryList' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_status_history_get_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a candidate's status
    # Update a candidate's status
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [CandidateStatus] :body Candidate Status to be set
    # @return [nil]
    def candidates_status_update(id, job_id, opts = {})
      candidates_status_update_with_http_info(id, job_id, opts)
      nil
    end

    # Update a candidate&#x27;s status
    # Update a candidate&#x27;s status
    # @param id candidate identifier
    # @param job_id job identifier
    # @param [Hash] opts the optional parameters
    # @option opts [CandidateStatus] :body Candidate Status to be set
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_status_update_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_status_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_status_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling CandidatesApi.candidates_status_update"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/status'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_status_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a candidate's status on primary assignment
    # Update a candidate's status on primary assignment. Please use `PUT /candidates/{id}/jobs/{jobId}/status` instead.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [CandidateStatus] :body Candidate Status to be set
    # @return [nil]
    def candidates_status_update_primary(id, opts = {})
      candidates_status_update_primary_with_http_info(id, opts)
      nil
    end

    # Update a candidate&#x27;s status on primary assignment
    # Update a candidate&#x27;s status on primary assignment. Please use &#x60;PUT /candidates/{id}/jobs/{jobId}/status&#x60; instead.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [CandidateStatus] :body Candidate Status to be set
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_status_update_primary_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_status_update_primary ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_status_update_primary"
      end
      # resource path
      local_var_path = '/candidates/{id}/status'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_status_update_primary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add tags to a candidate
    # Add new tags to a given candidate. It doesn't replace existing tags.
    # @param body Tags to be added.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateTags]
    def candidates_tags_add(body, id, opts = {})
      data, _status_code, _headers = candidates_tags_add_with_http_info(body, id, opts)
      data
    end

    # Add tags to a candidate
    # Add new tags to a given candidate. It doesn&#x27;t replace existing tags.
    # @param body Tags to be added.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateTags, Integer, Hash)>] CandidateTags data, response status code and response headers
    def candidates_tags_add_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_tags_add ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CandidatesApi.candidates_tags_add"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_tags_add"
      end
      # resource path
      local_var_path = '/candidates/{id}/tags'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateTags' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_tags_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete tags for a candidate
    # Delete tags for a given candidate. All tags associated with a candidate are removed.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def candidates_tags_delete(id, opts = {})
      candidates_tags_delete_with_http_info(id, opts)
      nil
    end

    # Delete tags for a candidate
    # Delete tags for a given candidate. All tags associated with a candidate are removed.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def candidates_tags_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_tags_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_tags_delete"
      end
      # resource path
      local_var_path = '/candidates/{id}/tags'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_tags_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get tags for a candidate
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateTags]
    def candidates_tags_get(id, opts = {})
      data, _status_code, _headers = candidates_tags_get_with_http_info(id, opts)
      data
    end

    # Get tags for a candidate
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateTags, Integer, Hash)>] CandidateTags data, response status code and response headers
    def candidates_tags_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_tags_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_tags_get"
      end
      # resource path
      local_var_path = '/candidates/{id}/tags'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateTags' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_tags_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update tags for a candidate
    # Update tags for a given candidate. It replaces all existing tags with the new array provided.
    # @param body Tags to be set.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [CandidateTags]
    def candidates_tags_replace(body, id, opts = {})
      data, _status_code, _headers = candidates_tags_replace_with_http_info(body, id, opts)
      data
    end

    # Update tags for a candidate
    # Update tags for a given candidate. It replaces all existing tags with the new array provided.
    # @param body Tags to be set.
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(CandidateTags, Integer, Hash)>] CandidateTags data, response status code and response headers
    def candidates_tags_replace_with_http_info(body, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_tags_replace ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CandidatesApi.candidates_tags_replace"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_tags_replace"
      end
      # resource path
      local_var_path = '/candidates/{id}/tags'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateTags' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_tags_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update candidate personal information
    # Update candidate details
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [PersonalDetails] :body Candidate personal information
    # @return [CandidateDetails]
    def candidates_update(id, opts = {})
      data, _status_code, _headers = candidates_update_with_http_info(id, opts)
      data
    end

    # Update candidate personal information
    # Update candidate details
    # @param id candidate identifier
    # @param [Hash] opts the optional parameters
    # @option opts [PersonalDetails] :body Candidate personal information
    # @return [Array<(CandidateDetails, Integer, Hash)>] CandidateDetails data, response status code and response headers
    def candidates_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CandidatesApi.candidates_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CandidatesApi.candidates_update"
      end
      # resource path
      local_var_path = '/candidates/{id}'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'CandidateDetails' 

      auth_names = opts[:auth_names] || ['key', 'oauth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CandidatesApi#candidates_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
