module BoxberryApi
  class ParcelCreate
    include Client

    class << self
      def call(parcel)
        new.parcel_create(parcel)
      end
    end

    def parcel_create(parcel)
      response = post(params: { method: "ParselCreate", sdata: parcel})
      if response.status == 200
        JSON.parse(response.body)
      else
        raise "HTTP call returned #{response.status} #{response.body}"
      end
    end
  end
end
