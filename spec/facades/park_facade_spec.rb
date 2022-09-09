require 'rails_helper'

RSpec.describe ParkFacade do
    it 'reads data from api' do
        parks = ParkFacade.search_park_by_state('MA')
        
            
    end
end