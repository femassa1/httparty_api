Dado(/^que eu tenha uma massa de dados do paciente$/) do
  @body2 = NovoPaciente.new.massa_paciente
end

E(/^faça um POST no endpoint de paciente$/) do
  @post_message = @api_helper.POST('https://gliese-api-dev.azure-api.net/patients/rest/paciente', @body2.to_json)
end

Entao(/^o retorno dele será uma CIP cadastrada com sucesso$/) do
  puts 'CIP criada : ' + @post_message.parsed_response['cip'].to_s
  expect(@post_message.code).to eq 200

  puts @db.select('select * from "MPac" where "MPac_cip" = 119995')
end