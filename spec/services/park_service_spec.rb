require 'rails_helper'

RSpec.describe ParkService do
    it 'gets data from api' do
        parks = ParkService.search_park
        #require pry, binding.pry
        expect(parks[:results][0]).to be_a(Hash)
        #expect(movie[:results][0][:title]).to be_a(String)
    end
end