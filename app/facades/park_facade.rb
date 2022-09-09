class ParkFacade
    
    def self.search_park_by_state(state)
        parsed_json = ParkService.search_park(state)
         
        parsed_json[:data].map do |park_json|
          Park.new(park_json)
        end
    end

end