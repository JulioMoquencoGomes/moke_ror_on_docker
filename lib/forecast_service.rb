class ForecastService

    include HTTParty
    require 'addressable/uri'

    def initialize(city)
        url_host = "http://api.weatherapi.com"
        key = "e489b30db4b24f2a84d171051260304"
        @safe_url = Addressable::URI.parse("#{url_host}/v1/forecast.json?key=#{key}&q=#{city}&days=1&aqi=no&alerts=no").normalize.to_s
    end

    def get
        response = HTTParty.get(@safe_url)
        if response.success?
            data = response.parsed_response['forecast']
            return {
                data: data,
                status: :ok
            }
        else
            return { 
                data: "Houve alguma falha", 
                status: :error
            }
        end
    end

end