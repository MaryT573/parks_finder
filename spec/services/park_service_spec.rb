require 'rails_helper'

RSpec.describe ParkService do
    it 'gets data from api' do
        parks = ParkService.search_park('MA')
        expect(parks).to be_a(Hash)      
    end
end