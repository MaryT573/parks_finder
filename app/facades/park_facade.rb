class ParkFacade
    def self.search_park_by_state
        parsed_json = ParkService.search_park
        #require 'pry'; binding.pry 
        parsed_json[:results].map do |member_json|
          Member.new(member_json)
        end
      end
end