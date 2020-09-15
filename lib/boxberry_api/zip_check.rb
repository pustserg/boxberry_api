module BoxberryApi
  class ZipCheck
    include Client
    attr_reader :zip_code

    class << self
      def call(zip_code)
        new(zip_code).check
      end
    end

    def initialize(zip_code)
      @zip_code = zip_code
    end

    def check
      response = get(params: { method: 'ZipCheck', Zip: zip_code })
      raise "HTTP call returned #{response.status} #{response.body}" unless response.status == 200

      JSON.parse(response.body)
    end
  end
end
