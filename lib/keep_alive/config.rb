module KeepAlive
  class Config
    attr_reader :no_of_rows
    attr_accessor :model_name
    def initialize
      @no_of_rows = 0
      @model_name = ""
    end
    
    def model(*model)
      @model_name = model
    end

    def no_of_rows
      @no_of_rows = @model_name.count  if model
    end
  end
end