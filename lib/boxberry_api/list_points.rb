module BoxberryApi
  class ListPoints
    include Client

    class << self
      def call
        new.list_points
      end
    end

    def list_points
      response = get(params: { method: "ListPoints"})
      if response.status == 200
        JSON.parse(response.body)
      else
        raise "HTTP call returned #{response.status} #{response.body}"
      end
    end
  end
end
