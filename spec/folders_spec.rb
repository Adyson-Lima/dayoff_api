RSpec.describe 'Testes de verificação de existência de pastas' do

  it 'pasta spec/models existe?' do
    expect(Dir.exist?('spec/models')).to eq(true)
  end

end