puts 'gerando dayoffs...'
5.times do |i|
  Dayoff.create(day: ['pascoa','natal','ano novo'].sample, description: 'um feriado conhecido')
end
puts 'dayoffs gerados com sucesso!'