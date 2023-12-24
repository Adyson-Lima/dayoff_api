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

  describe 'GET /api/v1/dayoffs/id' do
    it 'Consegue listar um dayoff especifico e retornar status 200?' do
      get :show, params: {id: @dayoff.id}
      expect(response.body).to include_json(day: 'Pascoa')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/dayoffs' do
    it 'Consegue criar um dayoff e retornar status 201?' do
      post :create, params: {dayoff: {day: 'Independencia', description: '7 de setembro'}, format: :json}
      expect(response.body).to include_json(day: 'Independencia')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/dayoffs/id' do
    it 'Consegue atualizar um dayoff e retornar status 200?' do
      dayoff = Dayoff.last
      patch :update, params: {dayoff: {day: 'Natal', description: 'dia de presentes'}, id: dayoff.id}
      expect(response.body).to include_json(day: 'Natal')
      expect(response).to have_http_status(200)
    end
  end
  

end