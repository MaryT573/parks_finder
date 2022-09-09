class ParkService
 
    def self.search_park
        response = conn.get("/parks")
        if response.status == 200
          JSON.parse(response.body, symbolize_names: true)
        else
          nil
        end
      end

    private  

    def self.conn
        Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
          faraday.params['api_key'] = ENV['parks_api_key']
        end
      end
end