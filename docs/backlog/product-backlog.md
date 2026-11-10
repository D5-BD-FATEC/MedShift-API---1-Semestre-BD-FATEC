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
| - | US16 | A definir pelo cliente/P2 | Representar a escala de segunda a sexta-feira, com três turnos por dia | A estimar | Sprint 3 |
| - | US17 | A definir pelo cliente/P2 | Escalar profissionais em qualquer turno da semana, respeitando regras de equilíbrio | A estimar | Sprint 3 |
| - | US18 | A definir pelo cliente/P2 | Consultar a cobertura de cada dia e turno da semana | A estimar | Sprint 3 |
| - | US19 | A definir pelo cliente/P2 | Identificar automaticamente os turnos e especialidades com cobertura insuficiente | A estimar | Sprint 3 |
| - | US20 | A definir pelo cliente/P2 | Calcular a quantidade total de plantões por profissional durante a semana | A estimar | Sprint 3 |
| - | US21 | A definir pelo cliente/P2 | Apresentar a maior, a menor e a média de plantões da equipe e identificar sobrecargas | A estimar | Sprint 3 |
| - | US22 | A definir pelo cliente/P2 | Calcular o percentual de turnos plenamente cobertos e classificar a cobertura semanal | A estimar | Sprint 3 |
| - | US23 | A definir pelo cliente/P2 | Calcular a quantidade de falhas de cobertura por especialidade | A estimar | Sprint 3 |
| - | US24 | A definir pelo cliente/P2 | Gerar um relatório textual resumido com os indicadores da semana | A estimar | Sprint 3 |
| - | US25 | A definir pelo cliente/P2 | Exportar os dados da equipe e da escala por meio do console | A estimar | Sprint 3 |
| - | US26 | A definir pelo cliente/P2 | Recuperar os dados exportados por meio de um arquivo-texto de entrada | A estimar | Sprint 3 |
| - | US27 | A definir pelo cliente/P2 | Encerrar a execução do sistema por meio de uma operação controlada | A estimar | Sprint 3 |


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

Dado que o coordenador informe uma quantidade negativa ou uma quantidade
superior a 11 médicos em qualquer especialidade,
Quando o sistema realizar a validação,
Então deve informar claramente que o valor é inválido e impedir que ele seja
utilizado na análise.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizados valores válidos e inválidos,  
Então os dois comportamentos devem ser demonstráveis apenas pela alteração dos dados de entrada, sem modificar o código.

### Definição do limite máximo

Foi validado com o cliente/P2 o limite máximo de **11 médicos por especialidade em cada turno**.

O limite é aplicado individualmente a:

- Clínico Geral;
- Pediatra;
- Cirurgião.

Dessa forma, cada especialidade poderá possuir entre 0 e 11 profissionais.

Considerando as três especialidades, o plantão poderá possuir no máximo
**33 médicos no total**, desde que nenhuma especialidade ultrapasse o limite
individual de 11 profissionais.

#### Justificativa

O limite foi definido com o objetivo de permitir uma margem de profissionais
acima da cobertura mínima necessária para o plantão.

A cobertura mínima exigida por plantão é de:

- 2 Clínicos Gerais;
- 1 Pediatra;
- 1 Cirurgião.

Quantidades superiores a 11 profissionais em qualquer especialidade deverão
ser consideradas inválidas.

**Máximo por especialidade:** 11 médicos.  
**Máximo total possível por turno:** 33 médicos.  
**Status:** Validado pelo cliente/P2.

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

# User Stories da Sprint 2

As necessidades da Sprint 2 foram definidas a partir dos feedbacks apresentados
pelo cliente/P2 durante a Sprint Review da Sprint 1.

A Sprint 2 amplia o MedShift para permitir o cadastro da equipe médica,
a distribuição dos profissionais entre os três turnos de um único dia
e a validação das regras relacionadas à construção da escala.

---

## US07 — Cadastrar profissionais da equipe médica

Como coordenador de escala,
quero cadastrar os profissionais da equipe médica,
para que eles possam ser utilizados na construção da escala do dia.

### Valor de Negócio

Permitir que o sistema possua as informações necessárias sobre os profissionais
disponíveis, formando a base para as consultas e para a construção da escala médica.

**Prioridade:** A definir pelo cliente/P2

---

## US08 — Consultar a lista completa de profissionais cadastrados

Como coordenador de escala,
quero visualizar a lista de todos os profissionais cadastrados,
para ter uma visão geral da equipe médica disponível.

### Valor de Negócio

Facilitar a visualização da equipe cadastrada, permitindo que a coordenação
consulte os profissionais disponíveis antes de realizar as escalações.

**Prioridade:** A definir pelo cliente/P2

---

## US09 — Localizar profissional pelo identificador

Como coordenador de escala,
quero localizar um profissional pelo identificador numérico,
para consultar rapidamente seus dados.

### Valor de Negócio

Permitir a localização rápida de um profissional específico,
reduzindo o tempo necessário para consultar seus dados e sua disponibilidade.

**Prioridade:** A definir pelo cliente/P2

---

## US10 — Escalar profissional em um turno

Como coordenador de escala,
quero atribuir um profissional cadastrado a um turno do dia,
para construir a escala médica.

### Valor de Negócio

Permitir que a coordenação distribua os profissionais cadastrados entre os
turnos do dia e construa efetivamente a escala médica.

**Prioridade:** A definir pelo cliente/P2

---

## US11 — Validar regras de escalação

Como coordenador de escala,
quero que o sistema valide cada tentativa de escalação,
para impedir conflitos e atribuições incorretas.

### Valor de Negócio

Reduzir erros na construção da escala, impedindo atribuições que violem
as regras de especialidade, disponibilidade e quantidade de plantões.

**Prioridade:** A definir pelo cliente/P2

---

## US12 — Validar cobertura dos três turnos

Como coordenador de escala,
quero validar a cobertura dos três turnos do dia,
para saber se Manhã, Tarde e Noite possuem a quantidade mínima necessária de profissionais.

### Valor de Negócio

Permitir que a coordenação identifique se os três turnos possuem profissionais
suficientes para atender à cobertura mínima exigida.

**Prioridade:** A definir pelo cliente/P2

---

## US13 — Informar turnos e especialidades com cobertura insuficiente

Como coordenador de escala,
quero saber quais turnos e quais especialidades estão com cobertura insuficiente,
para identificar os problemas existentes na escala do dia.

### Valor de Negócio

Facilitar a identificação dos pontos de insuficiência da escala,
permitindo que a coordenação saiba onde existem profissionais em falta.

**Prioridade:** A definir pelo cliente/P2

---

## US14 — Apresentar quantidade de plantões por profissional

Como coordenador de escala,
quero visualizar quantos plantões foram atribuídos a cada profissional,
para acompanhar a distribuição dos plantões da equipe.

### Valor de Negócio

Permitir o acompanhamento da distribuição dos plantões e facilitar a identificação
da carga atribuída a cada profissional.

**Prioridade:** A definir pelo cliente/P2

---

## US15 — Apresentar resumo do dia

Como coordenador de escala,
quero receber um resumo geral da escala do dia,
para compreender rapidamente a situação dos três turnos e dos profissionais.

### Valor de Negócio

Fornecer uma visão consolidada da escala do dia, reunindo a situação dos turnos,
as insuficiências existentes e a quantidade de plantões atribuída aos profissionais.

**Prioridade:** A definir pelo cliente/P2

---

Os critérios de aceitação, tarefas, dependências, regras de negócio e
cenários de teste relacionados à Sprint 2 estão detalhados no Sprint Backlog:

```text
docs/sprint-2/sprint-backlog.md
```

# Sprint 3

As necessidades da Sprint 3 foram definidas a partir dos feedbacks apresentados pelo cliente/P2 durante a Sprint Review da Sprint 2.

A terceira Sprint amplia o MedShift para permitir a construção e a análise de uma escala médica semanal, considerando cinco dias, de segunda a sexta-feira, com três turnos por dia.

Além da construção da escala, o sistema deverá apresentar indicadores gerenciais sobre a distribuição dos plantões e permitir a continuidade dos dados entre execuções, utilizando a exportação pelo console e a recuperação por arquivo-texto.

Esta Sprint também contempla o encerramento controlado do sistema.

---

## Contexto da Sprint 3

Após a Sprint Review 2, o cliente identificou a necessidade de utilizar o MedShift para organizar a escala médica de uma semana completa, evitando que a equipe precise cadastrar novamente todos os profissionais e montar toda a escala sempre que o programa for iniciado.

Na Sprint 3, o sistema deverá evoluir para permitir:

- Representação de cinco dias, de segunda a sexta-feira;
- Organização de três turnos por dia: Manhã, Tarde e Noite;
- Construção e consulta de uma escala semanal;
- Validação da cobertura mínima de cada turno;
- Identificação dos dias, turnos e especialidades com cobertura insuficiente;
- Contagem dos plantões atribuídos a cada profissional durante a semana;
- Identificação da maior, menor e média carga de plantões;
- Identificação de profissionais sobrecarregados;
- Cálculo do percentual de turnos plenamente cobertos;
- Contagem das falhas de cobertura por especialidade;
- Geração de um relatório textual semanal;
- Exportação dos dados pelo console;
- Recuperação dos dados por meio de arquivo-texto;
- Encerramento controlado do sistema.

---

## Estrutura da semana

A escala semanal deverá considerar:

- **5 dias:** segunda, terça, quarta, quinta e sexta-feira;
- **3 turnos por dia:** Manhã, Tarde e Noite;
- **15 turnos no total;**
- **60 postos de trabalho por semana.**

### Distribuição dos postos

| Especialidade | Quantidade de postos na semana |
|---|---:|
| Clínico Geral | 30 |
| Pediatra | 15 |
| Cirurgião | 15 |
| **Total** | **60** |

### Cobertura mínima por turno

| Especialidade | Manhã | Tarde | Noite |
|---|---:|---:|---:|
| Clínico Geral | 2 | 2 | 2 |
| Pediatra | 1 | 1 | 1 |
| Cirurgião | 1 | 1 | 1 |

A cobertura mínima deverá ser verificada individualmente em cada um dos quinze turnos da semana.

A escolha da estrutura de dados utilizada para representar os dias, turnos e postos será uma decisão técnica da equipe, respeitando as limitações do VisuAlg.

---

# User Stories da Sprint 3

## US16 — Representar a estrutura semanal de cinco dias

**Como** coordenador de escala,  
**quero** que o sistema represente os cinco dias úteis da semana e seus respectivos turnos,  
**para** que seja possível organizar a escala médica de segunda a sexta-feira.

### Valor de Negócio

Permitir que a coordenação trabalhe com uma escala semanal completa, substituindo a limitação anterior de organizar apenas um dia por execução.

### Critérios de Aceitação

**Cenário válido — estrutura semanal disponível**

Dado que o sistema seja iniciado,  
Quando a estrutura da semana for inicializada,  
Então deverá disponibilizar os cinco dias da semana,  
E cada dia deverá possuir os turnos Manhã, Tarde e Noite,  
E o sistema deverá representar os quinze turnos e os sessenta postos previstos.

**Cenário inválido — turno inexistente**

Dado que o coordenador tente acessar um turno que não pertence à estrutura semanal,  
Quando o sistema validar a identificação informada,  
Então deverá informar que o turno é inválido,  
E não deverá permitir que uma escalação seja realizada nesse turno.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem consultados os dias e turnos disponíveis,  
Então os cinco dias e seus respectivos turnos deverão ser identificados corretamente, sem alteração do código-fonte.

**Prioridade:** A definir pelo cliente/P2

---

## US17 — Escalar profissionais nos quinze turnos da semana

**Como** coordenador de escala,  
**quero** atribuir profissionais cadastrados aos turnos de todos os dias da semana,  
**para** construir a escala médica semanal.

### Valor de Negócio

Permitir que a coordenação distribua os profissionais entre os quinze turnos da semana, organizando os sessenta postos de trabalho previstos.

### Dados utilizados

A escalação deverá utilizar os profissionais cadastrados anteriormente, considerando:

- Identificador do profissional;
- Nome;
- Especialidade;
- Disponibilidade por turno;
- Dia da semana;
- Turno escolhido.

### Critérios de Aceitação

**Cenário válido — escalação realizada**

Dado que exista um profissional cadastrado,  
E que ele esteja disponível para o turno selecionado,  
E que sua especialidade seja compatível com o posto,  
Quando o coordenador realizar a escalação,  
Então o sistema deverá registrar o profissional no dia, turno e posto correspondentes.

**Cenário inválido — profissional inexistente**

Dado que o identificador informado não corresponda a nenhum profissional cadastrado,  
Quando o coordenador tentar realizar a escalação,  
Então o sistema deverá recusar a operação,  
E informar que o profissional não foi encontrado.

**Cenário inválido — profissional incompatível**

Dado que o profissional esteja cadastrado em determinada especialidade,  
Quando houver tentativa de utilizá-lo em um posto de outra especialidade,  
Então o sistema deverá recusar a escalação,  
E informar a incompatibilidade identificada.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem realizadas escalações válidas e inválidas em diferentes dias e turnos,  
Então os resultados deverão ser demonstráveis sem alteração do código-fonte.

**Prioridade:** A definir pelo cliente/P2

---

## US18 — Validar a cobertura de cada turno da semana

**Como** coordenador de escala,  
**quero** que o sistema valide a cobertura mínima dos quinze turnos da semana,  
**para** saber quais turnos atendem às necessidades de profissionais de cada especialidade.

### Valor de Negócio

Permitir que a coordenação verifique se cada turno possui a quantidade mínima necessária de profissionais, evitando que a validação fique restrita a apenas um dia.

### Critérios de Aceitação

**Cenário válido — turno com cobertura adequada**

Dado que um turno possua pelo menos dois Clínicos Gerais, um Pediatra e um Cirurgião,  
Quando o sistema realizar a validação da cobertura,  
Então deverá identificar que a cobertura mínima daquele turno foi atingida.

**Cenário inválido — turno com cobertura insuficiente**

Dado que pelo menos uma especialidade esteja abaixo da quantidade mínima exigida,  
Quando o sistema realizar a validação,  
Então deverá identificar que a cobertura mínima daquele turno não foi atingida.

**Cenário — validação dos quinze turnos**

Dado que exista uma escala semanal cadastrada,  
Quando o sistema executar a validação de cobertura,  
Então deverá analisar individualmente os quinze turnos,  
E apresentar o resultado correspondente a cada um deles.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizadas escalas com coberturas adequadas e insuficientes,  
Então os resultados de todos os turnos deverão ser demonstráveis sem alteração do código-fonte.

**Prioridade:** A definir pelo cliente/P2

---

## US19 — Identificar dias, turnos e especialidades com cobertura insuficiente

**Como** coordenador de escala,  
**quero** identificar quais dias, turnos e especialidades apresentam cobertura insuficiente,  
**para** localizar rapidamente os problemas existentes na escala semanal.

### Valor de Negócio

Facilitar a identificação das falhas de cobertura, permitindo que a coordenação saiba exatamente onde faltam profissionais para completar a escala.

### Critérios de Aceitação

**Cenário válido — identificação de insuficiência**

Dado que determinado turno apresente quantidade inferior à cobertura mínima em uma ou mais especialidades,  
Quando o sistema realizar a análise da semana,  
Então deverá identificar o dia, o turno e cada especialidade insuficiente.

**Cenário inválido — ausência de insuficiência**

Dado que todos os turnos atendam à cobertura mínima exigida,  
Quando o sistema realizar a análise,  
Então não deverá apresentar especialidades como insuficientes.

**Cenário — múltiplas insuficiências**

Dado que existam falhas em diferentes dias e turnos,  
Quando o sistema realizar a análise semanal,  
Então deverá apresentar todas as insuficiências identificadas, sem omitir os demais turnos com problemas.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizadas semanas com uma ou mais falhas de cobertura,  
Então o sistema deverá apresentar os respectivos dias, turnos e especialidades insuficientes.

**Prioridade:** A definir pelo cliente/P2

---

## US20 — Apresentar a quantidade de plantões por profissional na semana

**Como** coordenador de escala,  
**quero** visualizar a quantidade total de plantões atribuídos a cada profissional durante a semana,  
**para** acompanhar a distribuição da carga de trabalho da equipe médica.

### Valor de Negócio

Permitir que a coordenação acompanhe a quantidade de plantões atribuídos individualmente aos profissionais, facilitando a análise da distribuição semanal da equipe.

### Critérios de Aceitação

**Cenário válido — profissional com plantões**

Dado que um profissional tenha sido escalado em um ou mais turnos da semana,  
Quando o sistema calcular sua quantidade de plantões,  
Então deverá apresentar o total de plantões atribuídos a ele.

**Cenário válido — profissional sem plantões**

Dado que exista um profissional cadastrado que não tenha sido escalado em nenhum turno,  
Quando o sistema apresentar a quantidade de plantões por profissional,  
Então deverá informar que esse profissional possui zero plantões atribuídos.

**Cenário — totalização da equipe**

Dado que existam profissionais cadastrados e escalações realizadas,  
Quando o sistema calcular as quantidades de plantões,  
Então deverá apresentar a quantidade individual de cada profissional,  
E permitir a obtenção do total geral de plantões atribuídos na semana.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizados profissionais com quantidades diferentes de plantões,  
Então o sistema deverá apresentar corretamente a carga semanal de cada um.

**Prioridade:** A definir pelo cliente/P2

---

## US21 — Identificar a distribuição e a sobrecarga da equipe

**Como** coordenador de escala,  
**quero** visualizar a maior, a menor e a média de plantões da equipe, além de identificar os profissionais sobrecarregados,  
**para** acompanhar o equilíbrio na distribuição dos plantões semanais.

### Valor de Negócio

Permitir que a coordenação avalie a distribuição dos plantões entre os profissionais, identificando diferenças relevantes de carga de trabalho.

### Indicadores necessários

O sistema deverá identificar:

- Maior quantidade de plantões atribuídos a um profissional;
- Menor quantidade de plantões atribuídos a um profissional;
- Profissional ou profissionais correspondentes à maior carga;
- Profissional ou profissionais correspondentes à menor carga;
- Média de plantões da equipe;
- Profissionais considerados sobrecarregados.

### Regra de sobrecarga — R10

Um profissional será considerado sobrecarregado quando possuir uma quantidade de plantões superior à média da equipe mais um plantão.

### Critérios de Aceitação

**Cenário válido — cálculo dos indicadores**

Dado que existam profissionais cadastrados e plantões atribuídos,  
Quando o sistema calcular a distribuição da carga semanal,  
Então deverá identificar a maior e a menor quantidade de plantões,  
E apresentar os profissionais correspondentes,  
E calcular a média de plantões da equipe.

**Cenário válido — profissional sobrecarregado**

Dado que um profissional possua quantidade de plantões superior à média da equipe mais um,  
Quando o sistema aplicar a regra R10,  
Então deverá identificá-lo como sobrecarregado.

**Cenário válido — ausência de sobrecarga**

Dado que nenhum profissional possua quantidade de plantões superior à média da equipe mais um,  
Quando o sistema realizar a análise,  
Então deverá informar que não foram identificados profissionais sobrecarregados.

**Cenário inválido — equipe vazia**

Dado que não exista nenhum profissional cadastrado,  
Quando o sistema tentar calcular a média de plantões,  
Então deverá tratar a ausência de profissionais,  
E não deverá realizar uma divisão por zero.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizadas distribuições de plantões uniformes e não uniformes,  
Então os indicadores deverão ser calculados corretamente e os profissionais sobrecarregados identificados conforme R10.

**Prioridade:** A definir pelo cliente/P2

---

## US22 — Calcular o percentual de turnos plenamente cobertos

**Como** coordenador de escala,  
**quero** visualizar o percentual de turnos que atingiram a cobertura mínima durante a semana,  
**para** avaliar o nível geral de cobertura da escala médica.

### Valor de Negócio

Fornecer um indicador percentual que permita avaliar rapidamente quantos dos quinze turnos da semana atendem integralmente à cobertura mínima exigida.

### Regra de classificação — R11

A semana somente poderá ser classificada como plenamente coberta quando todos os quinze turnos atenderem à cobertura mínima nas três especialidades.

Um único turno com cobertura insuficiente impede a classificação da semana como plenamente coberta.

### Critérios de Aceitação

**Cenário válido — semana com todos os turnos cobertos**

Dado que os quinze turnos atendam à cobertura mínima exigida,  
Quando o sistema calcular o percentual de cobertura semanal,  
Então deverá apresentar quinze turnos plenamente cobertos,  
E o percentual deverá ser igual a 100%,  
E a semana deverá ser classificada como plenamente coberta.

**Cenário válido — semana parcialmente coberta**

Dado que alguns turnos não atendam à cobertura mínima,  
Quando o sistema calcular o percentual de cobertura,  
Então deverá considerar apenas os turnos que atingiram integralmente os mínimos,  
E apresentar o percentual correspondente,  
E classificar a semana como não plenamente coberta.

**Cenário — aplicação da regra R11**

Dado que pelo menos um dos quinze turnos apresente cobertura insuficiente,  
Quando o sistema classificar a semana,  
Então não deverá classificá-la como plenamente coberta.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizadas semanas com diferentes quantidades de turnos plenamente cobertos,  
Então os valores de quantidade, percentual e classificação semanal deverão ser apresentados corretamente.

**Prioridade:** A definir pelo cliente/P2

---

## US23 — Contabilizar falhas de cobertura por especialidade

**Como** coordenador de escala,  
**quero** visualizar a quantidade de turnos em que cada especialidade apresentou cobertura insuficiente,  
**para** identificar quais especialidades concentram mais falhas durante a semana.

### Valor de Negócio

Permitir que a coordenação identifique as especialidades com maior ocorrência de insuficiência, facilitando a avaliação da disponibilidade de profissionais e do planejamento da equipe.

### Critérios de Aceitação

**Cenário válido — falhas identificadas**

Dado que existam turnos com quantidade de profissionais inferior ao mínimo exigido em uma ou mais especialidades,  
Quando o sistema contabilizar as falhas,  
Então deverá apresentar a quantidade de turnos com insuficiência para cada especialidade.

**Cenário válido — nenhuma falha**

Dado que todos os quinze turnos atendam à cobertura mínima,  
Quando o sistema contabilizar as falhas,  
Então deverá informar zero falhas para Clínicos Gerais, Pediatras e Cirurgiões.

**Cenário — falhas em diferentes turnos**

Dado que uma mesma especialidade apresente insuficiência em diferentes turnos da semana,  
Quando o sistema realizar a contagem,  
Então deverá contabilizar cada turno com insuficiência uma única vez para aquela especialidade.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizadas semanas com diferentes situações de cobertura,  
Então o sistema deverá apresentar a quantidade de turnos com falha para cada especialidade.

**Prioridade:** A definir pelo cliente/P2

---

## US24 — Gerar relatório semanal da escala médica

**Como** coordenador de escala,  
**quero** visualizar um relatório textual resumido da semana,  
**para** consultar de forma consolidada a situação da cobertura e a distribuição dos plantões da equipe médica.

### Valor de Negócio

Reunir os principais indicadores semanais em uma única apresentação, facilitando a análise gerencial da escala e a identificação de problemas.

### Informações obrigatórias do relatório

O relatório semanal deverá apresentar:

- Situação geral da semana;
- Quantidade de turnos plenamente cobertos;
- Percentual de turnos plenamente cobertos;
- Falhas de cobertura por especialidade;
- Quantidade de plantões de cada profissional;
- Maior carga de plantões e profissional correspondente;
- Menor carga de plantões e profissional correspondente;
- Média de plantões da equipe;
- Lista de profissionais sobrecarregados, conforme R10.

### Critérios de Aceitação

**Cenário válido — relatório gerado**

Dado que existam profissionais cadastrados e uma escala semanal processada,  
Quando o coordenador solicitar o relatório semanal,  
Então o sistema deverá apresentar os indicadores exigidos,  
E os valores apresentados deverão corresponder aos dados da escala.

**Cenário válido — semana plenamente coberta**

Dado que todos os quinze turnos atendam à cobertura mínima,  
Quando o relatório for gerado,  
Então deverá informar que a semana está plenamente coberta,  
E apresentar o percentual de 100%.

**Cenário válido — semana com falhas**

Dado que existam turnos com cobertura insuficiente,  
Quando o relatório for gerado,  
Então deverá apresentar as falhas identificadas e as especialidades correspondentes,  
E classificar a semana como não plenamente coberta.

**Cenário inválido — ausência de profissionais**

Dado que não exista nenhum profissional cadastrado,  
Quando o relatório for solicitado,  
Então o sistema deverá tratar a coleção vazia,  
E não deverá realizar cálculos que dependam de uma divisão por zero.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizadas semanas com diferentes distribuições e situações de cobertura,  
Então o relatório deverá apresentar os indicadores de forma textual, clara e consistente com os dados processados.

**Prioridade:** A definir pelo cliente/P2

---

## US25 — Exportar os dados da semana pelo console

**Como** coordenador de escala,  
**quero** exportar os dados dos profissionais e das escalações da semana por meio do console,  
**para** guardar as informações e permitir sua recuperação em uma execução futura.

### Valor de Negócio

Permitir que a coordenação preserve o estado atual da equipe e da escala semanal, contornando a limitação do VisuAlg de não possuir gravação direta em arquivos.

### Funcionamento esperado

O sistema deverá oferecer uma operação de exportação de dados.

Ao selecionar essa operação, deverá apresentar no console um bloco de informações contendo todos os dados necessários para reconstruir o estado atual do sistema.

O bloco deverá incluir:

- Quantidade de profissionais cadastrados;
- Identificador de cada profissional;
- Nome de cada profissional;
- Especialidade;
- Disponibilidade para Manhã, Tarde e Noite;
- Quantidade de profissionais escalados em cada um dos quinze turnos;
- Identificadores dos profissionais escalados;
- Especialidades dos postos ocupados.

O coordenador deverá copiar o bloco exibido e salvá-lo manualmente em um arquivo-texto.

### Critérios de Aceitação

**Cenário válido — exportação dos dados**

Dado que existam profissionais cadastrados e escalações realizadas,  
Quando o coordenador selecionar a operação Exportar dados,  
Então o sistema deverá apresentar as informações necessárias para reconstruir a equipe e a escala semanal.

**Cenário válido — preservação da estrutura**

Dado que o sistema apresente o bloco de dados para exportação,  
Quando as informações forem copiadas para um arquivo-texto,  
Então a ordem dos dados deverá permitir sua leitura posterior pela US26.

**Cenário válido — exportação de coleção vazia**

Dado que não existam profissionais cadastrados,  
Quando o coordenador solicitar a exportação,  
Então o sistema deverá tratar a ausência de dados, apresentando uma mensagem clara e evitando gerar informações inconsistentes.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando o coordenador selecionar a operação de exportação,  
Então o sistema deverá imprimir o bloco de dados no console, permitindo sua cópia manual para um arquivo-texto.

**Prioridade:** A definir pelo cliente/P2

---

## US26 — Recuperar os dados da semana por arquivo-texto

**Como** coordenador de escala,  
**quero** recuperar os dados dos profissionais e das escalações a partir de um arquivo-texto,  
**para** continuar utilizando a equipe e a escala semanal sem precisar cadastrar e lançar todas as informações novamente.

### Valor de Negócio

Permitir a continuidade dos dados entre diferentes execuções do MedShift, reduzindo o trabalho de redigitação e tornando o sistema mais prático para a coordenação.

### Funcionamento esperado

O VisuAlg não possui um comando próprio para gravar o estado do programa em um arquivo.

Para atender à necessidade de continuidade, o sistema deverá utilizar o comando `arquivo` para fornecer ao programa as informações previamente exportadas pela US25.

O arquivo-texto deverá conter os dados em uma ordem compatível com a sequência de comandos `leia` utilizada na recuperação.

A recuperação deverá reconstruir:

- Os profissionais cadastrados;
- Os identificadores;
- Os nomes;
- As especialidades;
- As disponibilidades;
- As escalações dos quinze turnos;
- A quantidade de plantões atribuídos a cada profissional.

A US25 e a US26 deverão utilizar o mesmo contrato de organização dos dados.

### Critérios de Aceitação

**Cenário válido — recuperação realizada**

Dado que exista um arquivo-texto contendo os dados exportados anteriormente,  
Quando o MedShift for executado utilizando esse arquivo como entrada,  
Então deverá recuperar os profissionais e as escalações da semana,  
E reconstruir o estado correspondente aos dados originais.

**Cenário inválido — identificador duplicado**

Dado que o arquivo contenha dois profissionais com o mesmo identificador,  
Quando o sistema realizar a validação dos dados recuperados,  
Então deverá identificar a duplicidade,  
E recusar os dados inconsistentes, apresentando uma mensagem clara.

**Cenário inválido — quantidade fora do limite**

Dado que o arquivo contenha uma quantidade de profissionais ou escalações fora dos limites permitidos,  
Quando o sistema realizar a recuperação,  
Então deverá identificar a inconsistência,  
E impedir que os dados inválidos sejam utilizados.

**Cenário inválido — escalação inconsistente**

Dado que o arquivo contenha uma escalação com profissional inexistente, especialidade incompatível, indisponibilidade ou violação das regras de escalação,  
Quando o sistema validar os dados,  
Então deverá identificar a inconsistência,  
E recusar o estado inválido.

**Cenário válido — teste de ida e volta**

Dado que uma semana tenha sido montada e exportada pela US25,  
Quando o sistema for executado novamente utilizando o arquivo-texto correspondente,  
Então deverá recuperar os mesmos profissionais e escalações,  
E o relatório semanal e seus indicadores deverão ser idênticos aos apresentados antes da exportação.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem utilizados arquivos com dados válidos e inválidos,  
Então o sistema deverá demonstrar a recuperação correta e o tratamento das inconsistências sem alteração do código-fonte entre os cenários.

**Prioridade:** A definir pelo cliente/P2

---

## US27 — Encerrar o sistema de forma controlada

**Como** coordenador de escala,  
**quero** possuir uma opção específica para encerrar o MedShift,  
**para** finalizar a utilização do sistema de maneira clara e controlada.

### Valor de Negócio

Permitir que o usuário encerre a execução do programa por meio de uma operação prevista, evitando que o encerramento dependa de interrupções externas ou de comportamentos inesperados.

### Funcionamento esperado

O sistema deverá disponibilizar uma opção de encerramento na interface textual.

Quando essa opção for selecionada, o programa deverá finalizar o processamento e apresentar uma mensagem informando que o MedShift foi encerrado.

### Critérios de Aceitação

**Cenário válido — encerramento solicitado**

Dado que o MedShift esteja em execução,  
Quando o coordenador selecionar a opção de encerramento,  
Então o sistema deverá finalizar a execução,  
E apresentar uma mensagem de encerramento concluído.

**Cenário inválido — opção inexistente**

Dado que o sistema apresente as opções disponíveis,  
Quando o coordenador informar uma opção que não corresponda a nenhuma operação válida,  
Então deverá apresentar uma mensagem de erro,  
E não deverá interpretar a opção inválida como uma solicitação de encerramento.

**Cenário válido — encerramento após utilização**

Dado que o coordenador tenha realizado operações de cadastro, consulta, escalação ou relatório,  
Quando selecionar a opção de encerramento,  
Então o sistema deverá concluir a execução sem iniciar novas operações.

**Demonstração no VisuAlg**

Dado que o programa esteja sendo executado no VisuAlg,  
Quando forem testadas uma opção válida de encerramento e uma opção inválida,  
Então o sistema deverá demonstrar os respectivos comportamentos sem alteração do código-fonte.

**Prioridade:** A definir pelo cliente/P2

---

# Regras de Negócio da Sprint 3

As regras R1 a R7, definidas durante a Sprint 2, continuam válidas e deverão ser respeitadas durante a construção, validação e recuperação da escala semanal.

As novas regras da Sprint 3 são apresentadas a seguir.

## R8 — Limite semanal de plantões por profissional

Um profissional deverá possuir um limite de plantões durante a semana.

**Sugestão de referência apresentada no material do cliente:** seis plantões por profissional na semana.

A equipe deverá propor o limite e submetê-lo à validação do cliente/P2.

Caso o limite seja ultrapassado, o sistema deverá impedir a escalação ou gerar um alerta, conforme a definição acordada com o cliente/P2.

**Status:** Proposta de referência — pendente de validação.

## R9 — Descanso entre turno da noite e manhã do dia seguinte

Um profissional que trabalhar no turno da Noite de determinado dia não poderá ser escalado no turno da Manhã do dia seguinte.

A regra deverá ser verificada durante a construção da escala semanal.

**Exemplo:**

Se um profissional trabalhar na segunda-feira à noite, não poderá ser escalado na terça-feira pela manhã.

**Status:** Regra definida para a Sprint 3.

## R10 — Identificação de profissionais sobrecarregados

Um profissional será considerado sobrecarregado quando possuir quantidade de plantões superior à média de plantões da equipe acrescida de um plantão.

**Fórmula de referência:**

```text
Limite de sobrecarga = Média da equipe + 1

Profissional sobrecarregado:
Quantidade de plantões > Média da equipe + 1
```

O sistema deverá identificar os profissionais que atenderem a essa condição.

**Status:** Regra definida para a Sprint 3.

## R11 — Classificação da semana plenamente coberta

A semana somente poderá ser classificada como plenamente coberta quando todos os quinze turnos atenderem à cobertura mínima exigida para as três especialidades.

A existência de um único turno com cobertura insuficiente impedirá que a semana seja classificada como plenamente coberta.

**Status:** Regra definida para a Sprint 3.

---

# Restrições e decisões técnicas da Sprint 3

A implementação deverá respeitar as limitações do VisuAlg e as regras técnicas definidas nas etapas anteriores do projeto.

## Continuidade dos dados

O comando `arquivo` deverá ser utilizado para fornecer dados de entrada ao programa por meio de um arquivo-texto.

O VisuAlg não permite que o programa grave diretamente seu próprio estado em um arquivo.

Por esse motivo:

- A US25 deverá apresentar os dados no console;
- O coordenador deverá copiar o conteúdo para um arquivo-texto;
- A US26 deverá utilizar o comando `arquivo` para recuperar os dados;
- A ordem dos dados exportados deverá corresponder à ordem de leitura utilizada na recuperação;
- Os dados recuperados deverão ser validados antes de serem utilizados.

O arquivo deverá ser considerado um roteiro completo de execução, pois seus dados alimentarão todos os comandos `leia` executados pelo programa, inclusive eventuais opções de menu.

## Estruturas de dados

A representação dos dias, turnos, profissionais e postos será definida pela equipe.

A solução deverá respeitar:

- O limite de duas dimensões para vetores no VisuAlg;
- A ausência de estruturas do tipo registro;
- A necessidade de manter a consistência entre vetores paralelos;
- As limitações de manipulação de arquivos da ferramenta.

A escolha da representação da semana deverá ser justificada pela equipe durante a apresentação final.

## Formatação dos indicadores

Os cálculos de média e percentual deverão apresentar resultados com formatação adequada.

As divisões reais deverão utilizar a formatação de saída do VisuAlg para evitar a exibição de casas decimais excessivas.

O cálculo da média deverá tratar previamente a possibilidade de não existirem profissionais cadastrados, evitando divisão por zero.

---

# Referência para dimensionamento e testes

A semana possui sessenta postos de trabalho:

| Especialidade | Postos semanais |
|---|---:|
| Clínico Geral | 30 |
| Pediatra | 15 |
| Cirurgião | 15 |
| **Total** | **60** |

Considerando a sugestão de seis plantões semanais por profissional apresentada na R8, o dimensionamento mínimo teórico para ocupar os sessenta postos é de onze profissionais:

- Cinco Clínicos Gerais;
- Três Pediatras;
- Três Cirurgiões.

Essa composição deixa os profissionais praticamente no limite semanal sugerido.

Para os testes e demonstrações, o material da Sprint 3 recomenda uma equipe de doze profissionais:

- Seis Clínicos Gerais;
- Três Pediatras;
- Três Cirurgiões.

Com essa composição, uma semana com todos os sessenta postos ocupados resulta em média de cinco plantões por profissional.

**Observação:** o limite semanal de seis plantões permanece uma sugestão de referência até sua validação pelo cliente/P2. A composição de doze profissionais é recomendada para os testes, não uma quantidade obrigatória para todo cadastro.

---

# Dependências entre as User Stories

| User Story | Dependência ou relação |
|---|---|
| US16 | Base estrutural para a representação semanal. |
| US17 | Depende da estrutura semanal da US16 e dos dados de cadastro da Sprint 2. |
| US18 | Depende da estrutura semanal e das escalações realizadas. |
| US19 | Utiliza os resultados da validação de cobertura da US18. |
| US20 | Utiliza os dados das escalações semanais da US17. |
| US21 | Utiliza as quantidades de plantões calculadas na US20. |
| US22 | Utiliza a validação de cobertura realizada na US18 e a regra R11. |
| US23 | Utiliza os resultados de cobertura para contabilizar as falhas por especialidade. |
| US24 | Consolida os resultados das US18, US19, US20, US21, US22 e US23. |
| US25 | Exporta os dados necessários para reconstruir o estado semanal. |
| US26 | Depende do formato de exportação definido pela US25. |
| US27 | Disponibiliza o encerramento controlado da execução. |

---

# Pontos pendentes de validação com o cliente/P2

| ID | Assunto | Definição necessária | Responsável | Status |
|---|---|---|---|---|
| PEN10 | Limite semanal de plantões — R8 | Validar se o limite será de seis plantões por profissional e se seu descumprimento impedirá a escalação ou gerará apenas um alerta. | Cliente/P2 | Pendente |
| PEN11 | Estrutura da semana | Validar a apresentação da representação semanal escolhida pela equipe, quando necessário. | Equipe / Cliente/P2 | A definir |
| PEN12 | Formato de continuidade | Apresentar e validar o contrato de exportação e recuperação entre US25 e US26. | Equipe / Cliente/P2 | A definir |

---

## Documentação complementar

Os detalhes de implementação, tarefas, critérios de aceite, cenários de teste e organização do trabalho da Sprint 3 deverão ser registrados no documento específico do Sprint Backlog:

```text
docs/sprint-3/sprint-backlog.md
```

O Product Backlog permanece como documento de referência das necessidades do produto. O Sprint Backlog deverá detalhar o trabalho selecionado pela equipe para desenvolvimento durante a Sprint 3.

---
Nenhuma proposta pendente de validação deverá ser registrada como regra confirmada antes de sua aprovação pelo cliente/P2.
---
