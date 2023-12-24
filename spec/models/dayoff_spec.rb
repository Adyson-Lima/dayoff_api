require 'rails_helper'

RSpec.describe Dayoff, type: :model do
  
  before{@dayoff = Dayoff.new}

  describe 'testes de preenchimento do model Dayoff' do

    it 'day consegue ser preenchido?' do
      @dayoff.day = 'Natal'
      expect(@dayoff.day).to eq('Natal')
    end

  end
  
end