Dado(/^que eu tenha uma massa de dados do paciente$/) do
  @body2 = NovoPaciente.new.massa_paciente
end

E(/^fa�a um POST no endpoint de paciente$/) do
  @post_message = @API_helper.GET('http://jsonplaceholder.typicode.com/posts')
end

Entao(/^o retorno dele ser� uma CIP cadastrada com sucesso$/) do
  puts @post_message.parsed_response.to_s
  expect(@post_message.code).to eq 200

    #puts @db.select('select * from "MPac" where "MPac_cip" = 119995')
end