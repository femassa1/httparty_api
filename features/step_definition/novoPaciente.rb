Dado(/^que eu tenha uma massa de dados do paciente$/) do
  @body2 = NovoPaciente.new.massa_paciente
end

E(/^faça um POST no endpoint de paciente$/) do
  @post_message =
    HTTParty.post 'https://gliese-api-dev.azure-api.net/patients/rest/paciente',
                  body: @body2.to_json,
                  headers: {'Content-Type' => 'application/json'}
end

Entao(/^o retorno dele será uma CIP cadastrada com sucesso$/) do
  puts @post_message.parsed_response
  expect(@post_message.code).to eq 200
end