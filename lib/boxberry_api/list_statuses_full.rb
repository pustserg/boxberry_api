module BoxberryApi
  class ListStatusesFull
    include Client

    class << self
      def call(track)
        new.list_statuses_full(track)
      end
    end

    def list_statuses_full(track)
      response = get(params: { method: "ListStatusesFull", ImId: track })
      if response.status == 200
        JSON.parse(response.body)
      else
        raise "HTTP call returned #{response.status} #{response.body}"
      end
    end
  end
end
