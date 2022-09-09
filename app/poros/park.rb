class Park
    attr_reader :name, :id

    def initialize(park_data)
        @name = park_data[:fullName]
    end
end