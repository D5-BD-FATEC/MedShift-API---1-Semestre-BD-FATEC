algoritmo "Sistema_Plantao"

var
turno : inteiro
quantidade : inteiro

inicio
Escreval (" ------ SELECIONE O TURNO DESEJADO -----")
Escreval ("")
Escreval ("1 - Manhã")
Escreval ("2 - Tarde")
Escreval ("3 - Noite")
Escreval ("")

Escreval ("Selecione o turno desejado: ")
Leia (turno)
Se turno = 1 entao
  Escreval ("Turno selecionado: Manhã")
    Escreva ("Informar a quantidade de cirurgião:")
      Leia (quantidade)
        enquanto (quantidade < 0) faca
          Escreval("Quantidade inválida! Por favor, informe um número válido de cirurgiões.")
          Escreva ("Informar a quantidade de cirurgião:")
            Leia (quantidade)
        fimenquanto

  Senao
    Se turno = 2 entao
      Escreval ("Turno selecionado: Tarde")
        Escreva ("Informar a quantidade de cirurgião:")
          Leia (quantidade)
            enquanto (quantidade < 0) faca
              Escreval("Quantidade inválida! Por favor, informe um número válido de cirurgiões.")
              Escreva ("Informar a quantidade de cirurgião:")
                Leia (quantidade)
            fimenquanto

    Senao
      Se turno = 3 entao
        Escreval ("Turno selecionado: Noite")
          Escreva ("Informar a quantidade de cirurgião:")
            Leia (quantidade)
              enquanto (quantidade < 0) faca
                Escreval("Quantidade inválida! Por favor, informe um número válido de cirurgiões.")
                Escreva ("Informar a quantidade de cirurgião:")
                  Leia (quantidade)
              fimenquanto

      Senao
          Escreva ("OPÇÃO INVÁLIDA! Por favor, selecione um turno válido.")
    fimse
  fimse
fimse



fimalgoritmo