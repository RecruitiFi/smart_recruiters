require 'cgi'

module SmartRecruiters
  class OffersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get candidate's offers
    # @param id [String] candidate identifier
    # @param job_id [String] job identifier
    # @param [Hash] opts the optional parameters
    # @return [Offers]
    def candidates_offers_all(id, job_id, opts = {})
      data, _status_code, _headers = candidates_offers_all_with_http_info(id, job_id, opts)
      data
    end

    # Get candidate&#39;s offers
    # @param id [String] candidate identifier
    # @param job_id [String] job identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Offers, Integer, Hash)>] Offers data, response status code and response headers
    def candidates_offers_all_with_http_info(id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OffersApi.candidates_offers_all ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OffersApi.candidates_offers_all"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling OffersApi.candidates_offers_all"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/offers'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'jobId' + '}', CGI.escape(job_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Offers'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth', 'key']

      new_options = opts.merge(
        :operation => :"OffersApi.candidates_offers_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#candidates_offers_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get latest approval request for candidate's offer
    # @param id [String] candidate identifier
    # @param job_id [String] job identifier
    # @param offer_id [String] Identifier of a Offer
    # @param [Hash] opts the optional parameters
    # @return [ApprovalRequest]
    def candidates_offers_approvals_latest(id, job_id, offer_id, opts = {})
      data, _status_code, _headers = candidates_offers_approvals_latest_with_http_info(id, job_id, offer_id, opts)
      data
    end

    # Get latest approval request for candidate&#39;s offer
    # @param id [String] candidate identifier
    # @param job_id [String] job identifier
    # @param offer_id [String] Identifier of a Offer
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApprovalRequest, Integer, Hash)>] ApprovalRequest data, response status code and response headers
    def candidates_offers_approvals_latest_with_http_info(id, job_id, offer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OffersApi.candidates_offers_approvals_latest ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OffersApi.candidates_offers_approvals_latest"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling OffersApi.candidates_offers_approvals_latest"
      end
      # verify the required parameter 'offer_id' is set
      if @api_client.config.client_side_validation && offer_id.nil?
        fail ArgumentError, "Missing the required parameter 'offer_id' when calling OffersApi.candidates_offers_approvals_latest"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/offers/{offerId}/approvals/latest'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'jobId' + '}', CGI.escape(job_id.to_s)).sub('{' + 'offerId' + '}', CGI.escape(offer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApprovalRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth', 'key']

      new_options = opts.merge(
        :operation => :"OffersApi.candidates_offers_approvals_latest",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#candidates_offers_approvals_latest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search offers
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit number of elements to return. max value is 100 (default to 10)
    # @option opts [Integer] :offset number of elements to skip while processing result (default to 0)
    # @option opts [Time] :created_after ISO8601-formatted time boundaries for the offer creation time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [Time] :created_before ISO8601-formatted time boundaries for the offer creation time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [String] :age word-based offer age; when age is specified createdAfter and createdBefore are ignored, Examples: 10 days, 7 hours, 1 week, etc.
    # @option opts [Array<String>] :status offer states that need to be included in the results; by default all states are included
    # @return [Offers]
    def candidates_offers_find(opts = {})
      data, _status_code, _headers = candidates_offers_find_with_http_info(opts)
      data
    end

    # Search offers
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit number of elements to return. max value is 100 (default to 10)
    # @option opts [Integer] :offset number of elements to skip while processing result (default to 0)
    # @option opts [Time] :created_after ISO8601-formatted time boundaries for the offer creation time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [Time] :created_before ISO8601-formatted time boundaries for the offer creation time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ
    # @option opts [String] :age word-based offer age; when age is specified createdAfter and createdBefore are ignored, Examples: 10 days, 7 hours, 1 week, etc.
    # @option opts [Array<String>] :status offer states that need to be included in the results; by default all states are included
    # @return [Array<(Offers, Integer, Hash)>] Offers data, response status code and response headers
    def candidates_offers_find_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OffersApi.candidates_offers_find ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OffersApi.candidates_offers_find, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OffersApi.candidates_offers_find, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OffersApi.candidates_offers_find, must be greater than or equal to 0.'
      end

      allowable_values = ["CREATED", "PENDING_APPROVAL", "APPROVED", "NOT_APPROVED", "PENDING_ACCEPTANCE", "ACCEPTED", "NOT_ACCEPTED", "ABANDONED"]
      if @api_client.config.client_side_validation && opts[:'status'] && !opts[:'status'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"status\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/offers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'createdAfter'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'createdBefore'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'age'] = opts[:'age'] if !opts[:'age'].nil?
      query_params[:'status'] = @api_client.build_collection_param(opts[:'status'], :multi) if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Offers'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth', 'key']

      new_options = opts.merge(
        :operation => :"OffersApi.candidates_offers_find",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#candidates_offers_find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get candidate's offer
    # @param id [String] candidate identifier
    # @param job_id [String] job identifier
    # @param offer_id [String] Identifier of a Offer
    # @param [Hash] opts the optional parameters
    # @return [Offer]
    def candidates_offers_get(id, job_id, offer_id, opts = {})
      data, _status_code, _headers = candidates_offers_get_with_http_info(id, job_id, offer_id, opts)
      data
    end

    # Get candidate&#39;s offer
    # @param id [String] candidate identifier
    # @param job_id [String] job identifier
    # @param offer_id [String] Identifier of a Offer
    # @param [Hash] opts the optional parameters
    # @return [Array<(Offer, Integer, Hash)>] Offer data, response status code and response headers
    def candidates_offers_get_with_http_info(id, job_id, offer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OffersApi.candidates_offers_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OffersApi.candidates_offers_get"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling OffersApi.candidates_offers_get"
      end
      # verify the required parameter 'offer_id' is set
      if @api_client.config.client_side_validation && offer_id.nil?
        fail ArgumentError, "Missing the required parameter 'offer_id' when calling OffersApi.candidates_offers_get"
      end
      # resource path
      local_var_path = '/candidates/{id}/jobs/{jobId}/offers/{offerId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'jobId' + '}', CGI.escape(job_id.to_s)).sub('{' + 'offerId' + '}', CGI.escape(offer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Offer'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth', 'key']

      new_options = opts.merge(
        :operation => :"OffersApi.candidates_offers_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#candidates_offers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a given document in a given sent offer
    # @param offer_id [String] Identifier of an offer.
    # @param document_id [String] Identifier of a document.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def offers_documents_get_document(offer_id, document_id, opts = {})
      data, _status_code, _headers = offers_documents_get_document_with_http_info(offer_id, document_id, opts)
      data
    end

    # Get a given document in a given sent offer
    # @param offer_id [String] Identifier of an offer.
    # @param document_id [String] Identifier of a document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def offers_documents_get_document_with_http_info(offer_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OffersApi.offers_documents_get_document ...'
      end
      # verify the required parameter 'offer_id' is set
      if @api_client.config.client_side_validation && offer_id.nil?
        fail ArgumentError, "Missing the required parameter 'offer_id' when calling OffersApi.offers_documents_get_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling OffersApi.offers_documents_get_document"
      end
      # resource path
      local_var_path = '/offers/{offerId}/documents/{documentId}'.sub('{' + 'offerId' + '}', CGI.escape(offer_id.to_s)).sub('{' + 'documentId' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth', 'key']

      new_options = opts.merge(
        :operation => :"OffersApi.offers_documents_get_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#offers_documents_get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of documents related to sent offer.
    # @param offer_id [String] Identifier of an offer.
    # @param [Hash] opts the optional parameters
    # @return [OfferDocumentsList]
    def offers_documents_get_documents_list(offer_id, opts = {})
      data, _status_code, _headers = offers_documents_get_documents_list_with_http_info(offer_id, opts)
      data
    end

    # Get a list of documents related to sent offer.
    # @param offer_id [String] Identifier of an offer.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OfferDocumentsList, Integer, Hash)>] OfferDocumentsList data, response status code and response headers
    def offers_documents_get_documents_list_with_http_info(offer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OffersApi.offers_documents_get_documents_list ...'
      end
      # verify the required parameter 'offer_id' is set
      if @api_client.config.client_side_validation && offer_id.nil?
        fail ArgumentError, "Missing the required parameter 'offer_id' when calling OffersApi.offers_documents_get_documents_list"
      end
      # resource path
      local_var_path = '/offers/{offerId}/documents'.sub('{' + 'offerId' + '}', CGI.escape(offer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OfferDocumentsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth', 'key']

      new_options = opts.merge(
        :operation => :"OffersApi.offers_documents_get_documents_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#offers_documents_get_documents_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
