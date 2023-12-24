RSpec.describe 'Testes de verificação de existência de pastas' do

  it 'pasta spec/models existe?' do
    expect(Dir.exist?('spec/models')).to eq(true)
  end

  it 'pasta spec/controllers existe?' do
    expect(Dir.exist?('spec/controllers')).to eq(true)
  end

  it 'pasta app/controllers/api existe?' do
    expect(Dir.exist?('app/controlers/api')).to eq(true)
  end

end