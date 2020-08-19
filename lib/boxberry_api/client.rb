module BoxberryApi
  module Client
    def get(path: "", params: {})
      client.get(path) do |req|
        req.params["token"] = BoxberryApi.configuration.api_token
        params.each do |param, value|
          req.params[param] = value
        end
      end
    end

    def post(path: "", params:)
      data = { token: BoxberryApi.configuration.api_token }.merge(params)#.to_json
      client.post(path, URI.encode_www_form(data))
    end

    def client
      @client ||= Faraday.new(BoxberryApi.configuration.base_url)
    end
  end
end
