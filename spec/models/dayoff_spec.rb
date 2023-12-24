require 'rails_helper'

RSpec.describe Dayoff, type: :model do
  
  before{@dayoff = Dayoff.new}

  describe 'testes de preenchimento do model Dayoff' do

    it 'day consegue ser preenchido?' do
      @dayoff.day = 'Natal'
      expect(@dayoff.day).to eq('Natal')
    end

    it 'description consegue ser preenchido?' do
      @dayoff.description = 'Dia de presentes'
      expect(@dayoff.description).to eq('Dia de presentes')
    end

  end

  describe 'testes de validação do model Dayoff' do

    it 'objeto dayoff valido com campos obrigatorios preenchidos?' do
      @dayoff.day = 'Ano Novo'
      @dayoff.description = 'dia de fogos'
      expect(@dayoff).to be_valid
    end

    it 'objeto dayoff invalido com campos obrigatorios não preenchidos?' do
      dayoff = Dayoff.new
      expect(dayoff).to be_invalid
    end

  end
  
end