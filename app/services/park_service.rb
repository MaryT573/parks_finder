class ParkService
 
    def self.search_park(state)
        response = conn.get("parks?stateCode=#{state}")
        JSON.parse(response.body, symbolize_names: true) 
      end

    private  

    def self.conn
        Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
          faraday.params['api_key'] = ENV['api_key']
        end
      end
end