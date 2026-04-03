require 'swagger_helper'

RSpec.describe 'Forecasts API', type: :request, swagger_doc: 'v1/swagger.yaml' do

    path '/forecasts/{city}' do

    get 'Retrieves a forecast' do
      tags 'Forecasts'
      produces 'application/json', 'application/xml'
      parameter name: :city, :in => :path, :type => :string

      response '200', 'Forecasts found' do
        run_test!
      end

      response '404', 'Forecasts not found' do
        run_test!
      end
    end
  end

end