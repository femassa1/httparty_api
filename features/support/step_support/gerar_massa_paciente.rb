class NovoPaciente
  def massa_paciente
    $data_nascimento_pacienete = '1987-08-03'
    @body = {
        "cpf": DocumentosBr.cpf,
        "dataNascimento": $data_nascimento_pacienete,
        "nome": Faker::Name.name_with_middle.to_s,
        "nomeMae": 'Mãe Teste',
        #"rg": Faker::Number.number(9).to_s,
        #"rgOrgExp": 'SSPBA',
        "sexo": 'M',
        "contatos": {
        "emails": [
          {
            "endereco": Faker::Internet.email.to_s
          }
        ],
        "telefones": [
          {
            "ddd": 71,
            "numero": Faker::Number.number(9),
            "tipo": 'CELULAR'
          }
        ]
      },
        "enderecos": [
        {
            "bairro": Faker::Address.street_name.to_s,
            "cep": Faker::Number.number(8).to_s,
            "cidade": Faker::Address.city.to_s,
            #"complemento": 'Proximo ao Teste',
            "logradouro": 'Rua Teste',
            "numero": Faker::Address.building_number.to_s,
            "pais": 'teste',
            "uf": 'SP'
        }
      ]
    }
  end
end