# Product Backlog — MedShift

## Priorização do Product Backlog

O Product Backlog reúne as necessidades identificadas para o desenvolvimento
do MedShift e será ordenado de acordo com o valor de negócio definido em
conjunto com o cliente/P2.

As prioridades e o Rank definitivo deverão refletir a validação realizada
com o cliente/P2.

As estimativas serão definidas pela equipe durante o planejamento, utilizando
Story Points.

| Rank | ID | Prioridade | User Story | Estimativa | Sprint |
|---:|---|---|---|---:|---|
| - | US01 | A definir pelo cliente/P2 | Selecionar o turno do plantão | A estimar | Sprint 1 |
| - | US02 | A definir pelo cliente/P2 | Informar a quantidade de profissionais | A estimar | Sprint 1 |
| - | US03 | A definir pelo cliente/P2 | Validar as quantidades de profissionais | A estimar | Sprint 1 |
| - | US04 | A definir pelo cliente/P2 | Verificar a cobertura mínima do plantão | A estimar | Sprint 1 |
| - | US05 | A definir pelo cliente/P2 | Informar se o plantão pode ser publicado | A estimar | Sprint 1 |
| - | US06 | A definir pelo cliente/P2 | Informar o motivo da reprovação do plantão | A estimar | Sprint 1 |
| - | US07 | A definir pelo cliente/P2 | Cadastrar profissionais da equipe médica | A estimar | Sprint 2 |
| - | US08 | A definir pelo cliente/P2 | Consultar a lista completa de profissionais cadastrados | A estimar | Sprint 2 |
| - | US09 | A definir pelo cliente/P2 | Localizar profissional pelo identificador | A estimar | Sprint 2 |
| - | US10 | A definir pelo cliente/P2 | Escalar profissional em um turno | A estimar | Sprint 2 |
| - | US11 | A definir pelo cliente/P2 | Validar regras de escalação | A estimar | Sprint 2 |
| - | US12 | A definir pelo cliente/P2 | Validar cobertura dos três turnos | A estimar | Sprint 2 |
| - | US13 | A definir pelo cliente/P2 | Informar turnos e especialidades com cobertura insuficiente | A estimar | Sprint 2 |
| - | US14 | A definir pelo cliente/P2 | Apresentar quantidade de plantões por profissional | A estimar | Sprint 2 |
| - | US15 | A definir pelo cliente/P2 | Apresentar resumo do dia | A estimar | Sprint 2 |

### Critério de Priorização

A ordem das User Stories será definida considerando o valor de negócio
de cada necessidade para o cliente.

O Rank representa a ordem de importância das histórias dentro do Product
Backlog, sendo o Rank 1 o item de maior prioridade.

A priorização definitiva será registrada após a validação com o cliente/P2.

As estimativas serão realizadas pela equipe e representam o esforço relativo
necessário para desenvolver cada User Story.

> **Importante:** Rank, prioridade e estimativa não devem ser preenchidos
> arbitrariamente. Esses campos serão atualizados após a priorização com o
> cliente/P2 e a estimativa realizada pela equipe.
---

# User Stories da Sprint 1

## US01 — Selecionar o turno do plantão

Como coordenador de escala,
quero selecionar o turno que desejo analisar,
para verificar a cobertura do plantão correspondente.

### Valor de Negócio

Permitir que a coordenação identifique corretamente qual turno está sendo
analisado, evitando que a validação da cobertura seja associada ao período errado.

**Prioridade:** A definir pelo cliente/P2

### Critérios de Aceitação

**Cenário válido**

Dado que o sistema apresente as opções Manhã, Tarde e Noite,  
Quando o coordenador selecionar uma das opções válidas pelo teclado,  
Então o sistema deve reconhecer corretamente o turno escolhido e prosseguir com a análise.

**Cenário inválido**

Dado que o sistema apresente as opções de turno,  
Quando o coordenador informar uma opção diferente de Manhã, Tarde ou Noite,  
Então o sistema deve informar claramente que a escolha é inválida e não utilizar essa opção na análise.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem testados um turno válido e uma opção inválida,  
Então os dois cenários devem ser demonstráveis apenas alterando os dados de entrada, sem modificar o código.

---

## US02 — Informar a quantidade de profissionais

Como coordenador de escala,
quero informar a quantidade de profissionais disponíveis em cada especialidade,
para que o sistema consiga analisar a cobertura do plantão.

### Valor de Negócio

Permitir que a coordenação forneça os dados necessários sobre a disponibilidade
de profissionais para que o sistema possa avaliar corretamente a cobertura
do plantão.

**Prioridade:** A definir pelo cliente/P2

### Critérios de Aceitação

**Cenário válido**

Dado que um turno válido tenha sido selecionado,  
Quando o coordenador informar as quantidades de Clínicos Gerais, Pediatras e Cirurgiões,  
Então o sistema deve registrar os valores informados e utilizá-los na análise da cobertura.

**Cenário inválido**

Dado que o sistema esteja solicitando a quantidade de profissionais,  
Quando for informado um valor considerado inválido pelas regras da Sprint,  
Então o sistema não deve utilizar esse valor como uma quantidade válida na análise.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem informados diferentes valores pelo teclado,  
Então os cenários devem ser demonstráveis sem qualquer alteração no código.

---

## US03 — Validar as quantidades de profissionais

Como coordenador de escala,
quero que o sistema valide as quantidades de profissionais informadas,
para evitar que dados impossíveis sejam utilizados na análise do plantão.

### Valor de Negócio

Evitar que dados impossíveis ou incorretos sejam utilizados na análise,
aumentando a confiabilidade do resultado apresentado à coordenação hospitalar.

**Prioridade:** A definir pelo cliente/P2

### Critérios de Aceitação

**Cenário válido**

Dado que o coordenador informe uma quantidade dentro do intervalo permitido,  
Quando o valor for validado pelo sistema,  
Então ele deve ser aceito e utilizado na análise do plantão.

**Cenário inválido**

Dado que o coordenador informe uma quantidade negativa ou que o total de médicos
informados para o plantão ultrapasse o limite máximo validado,
Quando o sistema realizar a validação,
Então deve informar claramente que o valor é inválido e impedir que ele seja
utilizado na análise.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizados valores válidos e inválidos,  
Então os dois comportamentos devem ser demonstráveis apenas pela alteração dos dados de entrada, sem modificar o código.

### Definição do limite máximo

A equipe propõe o limite máximo de **33 médicos por turno, sendo 11 por especialidade**.

#### Justificativa

O limite foi definido com o objetivo de garantir a cobertura mínima das
especialidades, permitindo uma margem adicional de médicos para aumentar
a segurança da escala e lidar com eventuais indisponibilidades.

A cobertura mínima exigida por plantão é de:

- 2 Clínicos Gerais;
- 1 Pediatra;
- 1 Cirurgião.

Assim, o limite máximo proposto permite atender às necessidades mínimas do
plantão e ainda manter uma margem adicional de profissionais.

Quantidades acima desse limite também poderão ser tratadas como possíveis
erros de digitação.

---

## US04 — Verificar a cobertura mínima do plantão

Como coordenador de escala,
quero que o sistema compare a quantidade de profissionais disponíveis com a cobertura mínima exigida,
para saber se o plantão possui cobertura adequada.

### Valor de Negócio

Permitir que a coordenação identifique rapidamente se o plantão atende à
cobertura mínima obrigatória de profissionais de cada especialidade.

**Prioridade:** A definir pelo cliente/P2

### Critérios de Aceitação

**Cenário válido**

Dado que tenham sido informados pelo menos 2 Clínicos Gerais, 1 Pediatra e 1 Cirurgião,  
Quando o sistema verificar a cobertura mínima,  
Então deve identificar que a cobertura do plantão foi atingida.

**Cenário inválido**

Dado que pelo menos uma das especialidades esteja abaixo da quantidade mínima exigida,  
Quando o sistema verificar a cobertura,  
Então deve identificar que a cobertura mínima do plantão não foi atingida.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem informadas quantidades suficientes e insuficientes,  
Então ambos os resultados devem ser demonstráveis sem alteração do código.

---

## US05 — Informar se o plantão pode ser publicado

Como coordenador de escala,
quero receber uma conclusão sobre a possibilidade de publicação do plantão,
para saber se a escala está apta para publicação.

### Valor de Negócio

Apoiar a decisão da coordenação sobre a publicação do plantão, evitando
que uma escala com cobertura insuficiente seja disponibilizada.

**Prioridade:** A definir pelo cliente/P2

### Critérios de Aceitação

**Cenário válido**

Dado que todas as especialidades atendam à cobertura mínima,  
Quando a análise do plantão for concluída,  
Então o sistema deve informar claramente que o plantão pode ser publicado.

**Cenário inválido**

Dado que pelo menos uma especialidade não atenda à cobertura mínima,  
Quando a análise do plantão for concluída,  
Então o sistema deve informar claramente que o plantão não pode ser publicado.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem analisados um plantão aprovado e um plantão reprovado,  
Então ambas as conclusões devem ser demonstráveis sem alteração do código.

---

## US06 — Informar o motivo da reprovação do plantão

Como coordenador de escala,
quero saber o motivo pelo qual um plantão não pode ser publicado,
para identificar qual especialidade apresenta cobertura insuficiente.

### Valor de Negócio

Permitir que a coordenação identifique rapidamente o problema responsável
pela reprovação do plantão, facilitando a correção da escala antes da publicação.

**Prioridade:** A definir pelo cliente/P2

### Critérios de Aceitação

**Cenário válido**

Dado que uma ou mais especialidades estejam abaixo da cobertura mínima,  
Quando o plantão for considerado inadequado para publicação,  
Então o sistema deve informar qual especialidade está insuficiente, juntamente com a quantidade necessária e a quantidade informada.

**Cenário inválido**

Dado que todas as especialidades atendam à cobertura mínima,  
Quando a análise for concluída,  
Então o sistema não deve apresentar uma especialidade como insuficiente.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizados dados que provoquem aprovação e reprovação,  
Então os resultados e seus respectivos motivos devem ser demonstráveis sem alteração do código.

---

# Regras de Negócio da Sprint 1

## RN01 — Turnos

O hospital trabalha com três turnos:

- Manhã;
- Tarde;
- Noite.

---

## RN02 — Especialidades

Cada plantão considera três especialidades:

- Clínico Geral;
- Pediatra;
- Cirurgião.

---

## RN03 — Cobertura mínima

Cada turno deve possuir no mínimo:

- 2 Clínicos Gerais;
- 1 Pediatra;
- 1 Cirurgião.

---

## RN04 — Publicação do plantão

Um plantão que não atenda à cobertura mínima não pode ser publicado.

---

## RN05 — Motivo da reprovação

Quando um plantão não puder ser publicado, o sistema deve informar
o motivo da reprovação.

---

## RN06 — Quantidades negativas

Quantidades negativas de profissionais são impossíveis e não devem
ser aceitas pelo sistema.

A quantidade `0` é válida e pode representar a ausência de profissionais
disponíveis em determinada especialidade.

---

## RN07 — Quantidade máxima

Foi validado com o cliente/P2 o limite máximo de **11 médicos por especialidade em cada turno**.

O limite se aplica individualmente a:

- Clínico Geral;
- Pediatra;
- Cirurgião.

Portanto, considerando as três especialidades, o plantão poderá possuir
no máximo **33 médicos no total**, sendo até 11 de cada especialidade.

Caso qualquer especialidade possua mais de 11 profissionais,
a quantidade deverá ser considerada inválida.

**Máximo por especialidade:** 11 médicos.  
**Máximo total possível por turno:** 33 médicos.  
**Status:** Validado pelo cliente/P2.

---

## RN08 — Interação com o sistema

A coordenação hospitalar deve conseguir operar o sistema utilizando
teclado e console.

Não deve ser necessário alterar o código para escolher o turno ou
realizar uma operação.

---

# Cenários de Teste da Sprint 1

Os seguintes cenários deverão ser preparados para testar e demonstrar
o funcionamento do sistema.

---

## CT01 — Plantão com cobertura adequada

### Entrada de exemplo

Turno: Manhã

- Clínico Geral: 2
- Pediatra: 1
- Cirurgião: 1

### Resultado esperado

O sistema deve informar que o plantão possui cobertura adequada
e pode ser publicado.

---

## CT02 — Falta de profissional

### Entrada de exemplo

Turno: Manhã

- Clínico Geral: 2
- Pediatra: 0
- Cirurgião: 1

### Resultado esperado

O sistema deve informar que o plantão não pode ser publicado.

Também deve informar que existe quantidade insuficiente de Pediatras.

---

## CT03 — Quantidade impossível

### Entrada de exemplo

Clínico Geral: -1

### Resultado esperado

O sistema deve rejeitar ou sinalizar o valor informado e apresentar
uma mensagem indicando que a quantidade é inválida.

---

## CT04 — Opção inválida

### Entrada de exemplo

O usuário seleciona uma opção que não corresponde a nenhuma operação
válida do sistema.

### Resultado esperado

O sistema deve identificar a escolha como inválida e apresentar
uma mensagem de erro.

---

# Fora do Escopo da Sprint 1

As seguintes funcionalidades não fazem parte da Sprint 1:

- Cadastro nominal de médicos;
- Cadastro completo de profissionais;
- Análise de mais de um plantão por execução;
- Persistência de dados entre diferentes execuções;
- Salvamento dos dados do sistema;
- Interface gráfica;
- Uso obrigatório de vetores ou matrizes antes desse conteúdo ser trabalhado na disciplina.

---

# Funcionalidades Opcionais

Permitir que o usuário realize uma nova análise sem precisar reiniciar
o programa é uma melhoria bem-vinda.

Porém, essa funcionalidade não é obrigatória antes de o conteúdo de
estruturas de repetição ser trabalhado na disciplina.

---
# Interação e Validação com o Cliente/P2

Esta seção registra os principais esclarecimentos, validações e pendências
identificados durante a interação da equipe com o cliente/P2.

O objetivo é manter a rastreabilidade entre as necessidades apresentadas
pelo cliente e as decisões registradas no Product Backlog.

---

## Pontos esclarecidos com o cliente/P2

| ID | Assunto | Definição |
|---|---|---|
| VAL01 | Resultado final | O sistema deve informar o turno analisado. |
| VAL02 | Cobertura mínima | O sistema deve informar se a cobertura mínima foi atingida ou não. |
| VAL03 | Especialidade insuficiente | Quando houver cobertura insuficiente, o sistema deve informar qual especialidade apresenta o problema. |
| VAL04 | Publicação do plantão | A conclusão deve indicar claramente se o plantão pode ou não ser publicado. |
| VAL05 | Quantidade de profissionais faltantes | Informar exatamente quantos profissionais faltam é opcional. |
| VAL06 | Entradas inválidas | Dados inválidos não podem ser utilizados como dados válidos na análise. |
| VAL07 | Tratamento de entrada inválida | A forma de tratamento da entrada inválida é uma decisão técnica da equipe. |
| VAL08 | Nova análise | Realizar uma nova análise sem reiniciar o programa não é requisito obrigatório da Sprint 1. |
| VAL09 | Limite máximo de profissionais | Validado o máximo de 11 médicos por especialidade, totalizando até 33 médicos por turno. |

---

## Pendências de Validação

| ID | Pendência | Responsável pela definição | Status |
|---|---|---|---|
| PEN01 | Definir a ordem de prioridade das User Stories da Sprint 1 | Cliente/P2 | Pendente |
| PEN02 | Validar a versão revisada dos critérios de aceitação | Cliente/P2 | Pendente |
---

## Atualização do Product Backlog

Após cada interação com o cliente/P2, este Product Backlog deverá ser
atualizado para registrar:

- alterações de prioridade;
- novos esclarecimentos;
- critérios de aceitação revisados;
- regras de negócio validadas;
- novas necessidades identificadas;
- decisões que impactem as User Stories.

Nenhuma necessidade será registrada como requisito confirmado sem que sua
origem ou validação esteja claramente identificada.


---

# Sprint 2

As necessidades da Sprint 2 foram definidas a partir dos feedbacks apresentados
pelo cliente/P2 durante a Sprint Review da Sprint 1.

A Sprint 2 amplia o MedShift para permitir o cadastro da equipe médica,
a distribuição dos profissionais entre os três turnos de um único dia
e a validação das regras relacionadas à construção da escala.

As User Stories definidas para esta Sprint são:

- **US07 — Cadastrar profissionais da equipe médica**
- **US08 — Consultar a lista completa de profissionais cadastrados**
- **US09 — Localizar profissional pelo identificador**
- **US10 — Escalar profissional em um turno**
- **US11 — Validar regras de escalação**
- **US12 — Validar cobertura dos três turnos**
- **US13 — Informar turnos e especialidades com cobertura insuficiente**
- **US14 — Apresentar quantidade de plantões por profissional**
- **US15 — Apresentar resumo do dia**

Os critérios de aceitação, tarefas, dependências, regras de negócio e
cenários de teste relacionados à Sprint 2 estão detalhados no Sprint Backlog:

```text
docs/sprint-2/sprint-backlog.md
```

# Sprint 3

As necessidades da Sprint 3 ainda não foram disponibilizadas.

O Product Backlog será atualizado conforme a evolução do projeto e
os feedbacks apresentados pelo cliente/P2.

---
