#language: pt

Funcionalidade: Criando novo paciente

  Eu como usuario do gliese
  Desejo cadastrar um novo paciente
  Para utilza-lo nos testes

  @regressao
  Cenario: Criando paciente

    Dado que eu tenha uma massa de dados do paciente
    E faça um POST no endpoint de paciente 
    Entao o retorno dele será uma CIP cadastrada com sucesso
