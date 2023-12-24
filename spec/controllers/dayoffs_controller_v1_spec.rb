require 'rails_helper'

RSpec.describe Api::V1::DayoffsController, type: :controller do 

  before{@dayoff = Dayoff.create(day: 'Pascoa', description: 'dia de chocolate')}

  describe 'GET /api/v1/dayoffs' do
    it 'Consegue listar todos os dayoff e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end