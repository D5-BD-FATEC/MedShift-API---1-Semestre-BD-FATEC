# Sprint Backlog — Sprint 2

## 1. Projeto

**Projeto:** MedShift  
**Sprint:** Sprint 2  
**Tecnologia principal:** VisuAlg  
**Interface:** Console  
**Escopo temporal:** Um único dia por execução  
**Status do Sprint Backlog:** Estruturado para desenvolvimento

---

## 2. Meta da Sprint

Permitir que a coordenação hospitalar cadastre a equipe médica durante a execução do sistema, consulte os profissionais cadastrados, distribua esses profissionais entre os turnos Manhã, Tarde e Noite de um único dia e receba um diagnóstico completo sobre a cobertura da escala.

O sistema deverá impedir escalações que violem as regras definidas para a Sprint e, ao final, apresentar quais turnos e especialidades possuem cobertura adequada ou insuficiente.

---

## 3. Contexto da Sprint 2

Após a Sprint Review 1, o cliente informou que a validação de um plantão foi útil, porém ainda exige conferência manual.

Na Sprint 2, o MedShift deverá evoluir para permitir:

- cadastro da equipe médica durante a execução;
- consulta dos profissionais cadastrados;
- busca de profissional por identificador;
- construção da escala dos três turnos de um único dia;
- validação das regras de escalação;
- validação da cobertura mínima de cada turno;
- identificação de turnos e especialidades com cobertura insuficiente;
- contagem dos plantões atribuídos a cada profissional;
- apresentação de um resumo geral do dia.

Os dados continuarão existindo apenas durante a execução do programa.

Não haverá persistência de dados entre diferentes execuções.

---

## 4. Conceitos importantes

### 4.1 Cadastro do profissional

A disponibilidade por turno faz parte do cadastro do profissional.

Ao cadastrar um médico, deverão ser armazenadas as seguintes informações:

- identificador numérico;
- nome;
- especialidade;
- disponibilidade no turno da Manhã;
- disponibilidade no turno da Tarde;
- disponibilidade no turno da Noite.

A disponibilidade representa os turnos em que o profissional pode trabalhar de forma geral.

A disponibilidade não representa uma escalação.

---

### 4.2 Escalação do profissional

A escalação é uma operação realizada após o cadastro.

Durante a construção da escala do dia, o coordenador selecionará um profissional cadastrado e tentará atribuí-lo a um turno específico.

A escalação deverá respeitar:

- a especialidade cadastrada;
- a disponibilidade cadastrada;
- o limite de plantões no dia;
- a regra de um único posto por profissional no mesmo turno;
- a existência do profissional no cadastro;
- a existência do turno selecionado.

---

## 5. User Stories da Sprint 2

| ID | User Story | Status |
|---|---|---|
| US07 | Cadastrar profissionais da equipe médica | Planejada |
| US08 | Consultar a lista completa de profissionais cadastrados | Planejada |
| US09 | Localizar profissional pelo identificador | Planejada |
| US10 | Escalar profissional em um turno | Planejada |
| US11 | Validar regras de escalação | Planejada |
| US12 | Validar cobertura dos três turnos | Planejada |
| US13 | Informar turnos e especialidades com cobertura insuficiente | Planejada |
| US14 | Apresentar quantidade de plantões por profissional | Planejada |
| US15 | Apresentar resumo do dia | Planejada |

A ordem técnica de desenvolvimento poderá ser organizada durante a Sprint Planning.

---

## 6. Menu principal previsto

O sistema deverá possuir um menu textual que permita acessar as principais funcionalidades sem necessidade de alterar o código-fonte.

Estrutura conceitual:

```text
===== MEDSHIFT =====

1 - Cadastrar profissional
2 - Listar todos os profissionais
3 - Consultar profissional por identificador
4 - Escalar profissional
5 - Validar cobertura do dia
6 - Exibir resumo do dia
0 - Encerrar
```

A numeração poderá ser ajustada pela equipe durante o desenvolvimento.

Entretanto, deverão existir opções separadas para:

- listar todos os profissionais;
- consultar um profissional específico pelo identificador.

---

# 7. US07 — Cadastrar profissionais da equipe médica

## User Story

Como coordenador de escala,  
quero cadastrar os profissionais da equipe médica,  
para que eles possam ser utilizados na construção da escala do dia.

---

## Dados obrigatórios

Para cada profissional deverão ser registrados:

- identificador numérico;
- nome;
- especialidade;
- disponibilidade para Manhã;
- disponibilidade para Tarde;
- disponibilidade para Noite.

---

## Especialidades disponíveis

O profissional deverá possuir uma das seguintes especialidades:

```text
Clínico Geral
Pediatra
Cirurgião
```

---

## Critérios de Aceitação

### Cenário válido — cadastro realizado

**Dado** que ainda exista espaço disponível para novos profissionais,  
**E** que o identificador informado ainda não esteja cadastrado,  
**Quando** o coordenador informar identificador, nome, especialidade e disponibilidade por turno,  
**Então** o sistema deverá cadastrar o profissional corretamente.

---

### Cenário inválido — identificador duplicado

**Dado** que já exista um profissional cadastrado com determinado identificador,  
**Quando** o coordenador tentar cadastrar outro profissional utilizando o mesmo identificador,  
**Então** o sistema deverá recusar o cadastro,  
**E** informar claramente que o identificador já está sendo utilizado.

---

### Cenário inválido — capacidade máxima

**Dado** que a capacidade máxima de profissionais tenha sido atingida,  
**Quando** houver tentativa de realizar um novo cadastro,  
**Então** o sistema deverá recusar o cadastro,  
**E** informar que a capacidade máxima foi atingida.

---

## Capacidade máxima proposta

**Capacidade proposta pela equipe:** 50 profissionais.

### Justificativa

O dimensionamento mínimo necessário para possibilitar a cobertura completa de um único dia é de sete médicos.

Entretanto, o cadastro representa a equipe disponível para organização das escalas e não apenas os profissionais que serão utilizados naquele dia específico.

Uma equipe real também pode possuir:

- profissionais de reserva;
- médicos em folga;
- profissionais indisponíveis em determinados turnos;
- substitutos;
- profissionais que não serão utilizados em todas as escalas.

Por esse motivo, a equipe propõe uma capacidade máxima de **50 profissionais cadastrados durante uma execução**.

Esse valor oferece margem suficiente para representar uma equipe médica maior que o mínimo necessário para um dia, mantendo uma estrutura de dados fixa e adequada ao VisuAlg.

**Status:** Proposta da equipe — pendente de validação do cliente/P2.

---

## Tarefas

- [ ] Definir estruturas para armazenar os profissionais.
- [ ] Armazenar identificadores.
- [ ] Armazenar nomes.
- [ ] Armazenar especialidades.
- [ ] Armazenar disponibilidade por turno.
- [ ] Solicitar os dados pelo teclado.
- [ ] Validar identificador duplicado.
- [ ] Controlar quantidade de profissionais cadastrados.
- [ ] Recusar cadastro acima da capacidade máxima.
- [ ] Exibir mensagem de cadastro realizado com sucesso.
- [ ] Testar cadastro de múltiplos profissionais.
- [ ] Testar identificador duplicado.
- [ ] Testar capacidade máxima.

---

## Dependências

Nenhuma dependência funcional obrigatória.

---

# 8. US08 — Consultar a lista completa de profissionais cadastrados

## User Story

Como coordenador de escala,  
quero visualizar a lista de todos os profissionais cadastrados,  
para ter uma visão geral da equipe médica disponível.

---

## Critérios de Aceitação

### Cenário válido

**Dado** que existam profissionais cadastrados,  
**Quando** o coordenador selecionar a opção de consultar a lista completa,  
**Então** o sistema deverá apresentar todos os profissionais cadastrados.

Para cada profissional, deverão ser apresentados pelo menos:

- identificador;
- nome;
- especialidade;
- disponibilidade para Manhã;
- disponibilidade para Tarde;
- disponibilidade para Noite.

---

### Cenário inválido — nenhum profissional cadastrado

**Dado** que nenhum profissional tenha sido cadastrado,  
**Quando** o coordenador solicitar a lista completa,  
**Então** o sistema deverá informar claramente que não existem profissionais cadastrados.

---

## Tarefas

- [ ] Criar opção específica no menu.
- [ ] Verificar se existem profissionais cadastrados.
- [ ] Percorrer todos os registros existentes.
- [ ] Exibir identificador.
- [ ] Exibir nome.
- [ ] Exibir especialidade.
- [ ] Exibir disponibilidade por turno.
- [ ] Tratar situação sem profissionais cadastrados.

---

## Dependências

- US07 — Cadastrar profissionais da equipe médica.

---

# 9. US09 — Localizar profissional pelo identificador

## User Story

Como coordenador de escala,  
quero localizar um profissional pelo identificador numérico,  
para consultar rapidamente seus dados.

---

## Critérios de Aceitação

### Cenário válido

**Dado** que exista um profissional com o identificador informado,  
**Quando** o coordenador realizar uma busca pelo identificador,  
**Então** o sistema deverá localizar o profissional,  
**E** apresentar suas informações.

As informações apresentadas deverão incluir:

- identificador;
- nome;
- especialidade;
- disponibilidade por turno.

---

### Cenário inválido — identificador inexistente

**Dado** que nenhum profissional possua o identificador informado,  
**Quando** a busca for realizada,  
**Então** o sistema deverá informar claramente que o profissional não foi encontrado.

---

## Observação

A busca por identificador numérico é obrigatória.

A busca por nome não faz parte do escopo obrigatório da Sprint 2 e poderá ser implementada apenas como funcionalidade opcional.

---

## Tarefas

- [ ] Criar opção de consulta individual no menu.
- [ ] Solicitar o identificador.
- [ ] Percorrer os profissionais cadastrados.
- [ ] Comparar os identificadores.
- [ ] Identificar o profissional correspondente.
- [ ] Exibir suas informações.
- [ ] Informar quando o identificador não existir.

---

## Dependências

- US07 — Cadastrar profissionais da equipe médica.

---

# 10. US10 — Escalar profissional em um turno

## User Story

Como coordenador de escala,  
quero atribuir um profissional cadastrado a um turno do dia,  
para construir a escala médica.

---

## Critérios de Aceitação

### Cenário válido

**Dado** que o profissional esteja cadastrado,  
**E** esteja disponível para o turno escolhido,  
**E** a especialidade utilizada na escalação corresponda à especialidade registrada em seu cadastro,  
**E** ainda não esteja ocupando outro posto naquele mesmo turno,  
**E** possua menos de dois plantões no dia,  
**Quando** o coordenador realizar a escalação,  
**Então** o sistema deverá registrar a atribuição corretamente.

---

### Cenário inválido

**Dado** que o coordenador tente realizar uma escalação,  
**Quando** ocorrer pelo menos uma das situações abaixo:

- o profissional não estiver cadastrado;
- o profissional estiver indisponível no turno;
- o profissional já ocupar um posto naquele mesmo turno;
- o profissional já possuir dois plantões no dia;
- a especialidade utilizada na escalação for incompatível com a especialidade registrada no cadastro;
- o turno informado não existir;

**Então** o sistema deverá recusar a escalação,  
**E** informar claramente o motivo da recusa,  
**E** garantir que os dados da escala não sejam alterados pela tentativa inválida.

---

## Tarefas

- [ ] Solicitar o identificador do profissional.
- [ ] Localizar o profissional cadastrado.
- [ ] Solicitar ou identificar o turno.
- [ ] Verificar a especialidade registrada.
- [ ] Verificar disponibilidade.
- [ ] Verificar se já ocupa um posto no turno.
- [ ] Verificar quantidade atual de plantões.
- [ ] Registrar escalação válida.
- [ ] Atualizar contador de plantões.
- [ ] Informar sucesso.
- [ ] Informar motivo específico quando a escalação for recusada.

---

## Dependências

- US07 — Cadastrar profissionais.
- US09 — Localizar profissional por identificador.

---

# 11. US11 — Validar regras de escalação

## User Story

Como coordenador de escala,  
quero que o sistema valide cada tentativa de escalação,  
para impedir conflitos e atribuições incorretas.

---

## Critérios de Aceitação

### Especialidade incompatível

**Dado** que um profissional esteja cadastrado em determinada especialidade,  
**Quando** houver tentativa de utilizá-lo em uma especialidade diferente,  
**Então** a escalação deverá ser recusada.

---

### Profissional duplicado no mesmo turno

**Dado** que o profissional já ocupe um posto em determinado turno,  
**Quando** houver tentativa de escalá-lo novamente no mesmo turno,  
**Então** a escalação deverá ser recusada.

---

### Terceiro plantão no mesmo dia

**Dado** que o profissional já possua dois plantões atribuídos no mesmo dia,  
**Quando** houver tentativa de atribuir um terceiro plantão,  
**Então** a escalação deverá ser recusada.

---

### Profissional indisponível

**Dado** que o profissional esteja registrado como indisponível em determinado turno,  
**Quando** houver tentativa de escalá-lo nesse turno,  
**Então** a escalação deverá ser recusada.

---

### Profissional inexistente

**Dado** que o identificador informado não pertença a nenhum profissional cadastrado,  
**Quando** houver tentativa de escalação,  
**Então** a operação deverá ser recusada.

---

### Turno inexistente

**Dado** que o sistema trabalhe apenas com Manhã, Tarde e Noite,  
**Quando** for informada uma opção de turno inexistente,  
**Então** a escalação deverá ser recusada.

---

## Regra sobre sequência dos turnos

Não existe restrição relacionada à sequência dos plantões.

Um profissional poderá, por exemplo, trabalhar:

```text
Manhã + Tarde
```

ou:

```text
Manhã + Noite
```

ou:

```text
Tarde + Noite
```

desde que:

- não ultrapasse dois plantões no mesmo dia;
- esteja disponível nos dois turnos;
- sua especialidade seja compatível;
- não ocupe dois postos no mesmo turno.

---

## Tarefas

- [ ] Validar existência do profissional.
- [ ] Validar especialidade.
- [ ] Validar disponibilidade.
- [ ] Validar duplicidade dentro do mesmo turno.
- [ ] Validar quantidade de plantões.
- [ ] Validar turno informado.
- [ ] Criar mensagens específicas para cada erro.
- [ ] Garantir que escalações inválidas não alterem os dados.
- [ ] Testar todas as regras individualmente.

---

## Dependências

- US07 — Cadastrar profissionais.
- US10 — Escalar profissional em um turno.

---

# 12. US12 — Validar cobertura dos três turnos

## User Story

Como coordenador de escala,  
quero validar a cobertura dos três turnos do dia,  
para saber se Manhã, Tarde e Noite possuem a quantidade mínima necessária de profissionais.

---

## Cobertura mínima

| Especialidade | Manhã | Tarde | Noite |
|---|---:|---:|---:|
| Clínico Geral | 2 | 2 | 2 |
| Pediatra | 1 | 1 | 1 |
| Cirurgião | 1 | 1 | 1 |

Cada turno exige quatro postos:

```text
2 Clínicos Gerais
1 Pediatra
1 Cirurgião
```

---

## Critérios de Aceitação

### Cenário válido

**Dado** que todas as especialidades de determinado turno atendam às quantidades mínimas,  
**Quando** o sistema verificar a cobertura,  
**Então** deverá considerar aquele turno com cobertura adequada.

---

### Cenário inválido

**Dado** que pelo menos uma especialidade de determinado turno esteja abaixo da cobertura mínima,  
**Quando** a validação for realizada,  
**Então** o sistema deverá identificar que aquele turno possui cobertura insuficiente.

---

## Tarefas

- [ ] Contar Clínicos Gerais escalados na Manhã.
- [ ] Contar Pediatras escalados na Manhã.
- [ ] Contar Cirurgiões escalados na Manhã.
- [ ] Realizar as mesmas verificações para a Tarde.
- [ ] Realizar as mesmas verificações para a Noite.
- [ ] Comparar os valores com a cobertura mínima.
- [ ] Registrar situação da Manhã.
- [ ] Registrar situação da Tarde.
- [ ] Registrar situação da Noite.

---

## Dependências

- US10 — Escalar profissional.
- US11 — Validar regras de escalação.

---

# 13. US13 — Informar turnos e especialidades com cobertura insuficiente

## User Story

Como coordenador de escala,  
quero saber quais turnos e quais especialidades estão com cobertura insuficiente,  
para identificar os problemas existentes na escala do dia.

---

## Critérios de Aceitação

### Cenário válido — cobertura insuficiente

**Dado** que pelo menos uma especialidade esteja abaixo da cobertura mínima,  
**Quando** a validação do dia for concluída,  
**Então** o sistema deverá informar:

- o turno;
- a especialidade insuficiente;
- a quantidade mínima necessária;
- a quantidade existente na escala.

---

### Cenário sem insuficiência

**Dado** que todas as especialidades de todos os turnos atendam aos mínimos,  
**Quando** a validação for concluída,  
**Então** nenhuma especialidade deverá ser apresentada como insuficiente.

---

## Exemplo

```text
===== COBERTURA DO DIA =====

MANHÃ
Cobertura: ATINGIDA

TARDE
Cobertura: NÃO ATINGIDA

Especialidade insuficiente:
Pediatra

Quantidade necessária: 1
Quantidade escalada: 0

NOITE
Cobertura: ATINGIDA
```

---

## Tarefas

- [ ] Identificar cada turno insuficiente.
- [ ] Identificar cada especialidade insuficiente.
- [ ] Exibir o turno.
- [ ] Exibir a especialidade.
- [ ] Exibir quantidade mínima.
- [ ] Exibir quantidade escalada.
- [ ] Tratar mais de uma insuficiência no mesmo turno.
- [ ] Tratar insuficiências em mais de um turno.

---

## Dependências

- US12 — Validar cobertura dos três turnos.

---

# 14. US14 — Apresentar quantidade de plantões por profissional

## User Story

Como coordenador de escala,  
quero visualizar quantos plantões foram atribuídos a cada profissional,  
para acompanhar a distribuição dos plantões da equipe.

---

## Critérios de Aceitação

### Cenário válido

**Dado** que existam profissionais cadastrados,  
**Quando** o sistema apresentar a distribuição de plantões,  
**Então** deverá informar a quantidade de plantões atribuída a cada profissional.

---

## Regras

Cada profissional poderá possuir:

```text
0 plantões
1 plantão
2 plantões
```

Nunca poderá possuir:

```text
3 ou mais plantões
```

---

## Tarefas

- [ ] Criar contador de plantões por profissional.
- [ ] Inicializar contador com 0.
- [ ] Incrementar contador após escalação válida.
- [ ] Não incrementar após escalação recusada.
- [ ] Exibir identificador ou nome do profissional.
- [ ] Exibir quantidade de plantões.
- [ ] Testar profissional com 0 plantões.
- [ ] Testar profissional com 1 plantão.
- [ ] Testar profissional com 2 plantões.

---

## Dependências

- US10 — Escalar profissional.
- US11 — Validar regras de escalação.

---

# 15. US15 — Apresentar resumo do dia

## User Story

Como coordenador de escala,  
quero receber um resumo geral da escala do dia,  
para compreender rapidamente a situação dos três turnos e dos profissionais.

---

## Critérios de Aceitação

### Cenário válido

**Dado** que a equipe tenha sido cadastrada e as escalações tenham sido realizadas,  
**Quando** o coordenador solicitar o resumo do dia,  
**Então** o sistema deverá apresentar as principais informações da escala.

---

## Informações obrigatórias no resumo

O resumo deverá apresentar:

- situação da cobertura da Manhã;
- situação da cobertura da Tarde;
- situação da cobertura da Noite;
- turnos insuficientes;
- especialidades insuficientes;
- quantidade de plantões atribuída a cada profissional.

---

## Exemplo conceitual

```text
========== RESUMO DO DIA ==========

MANHÃ
Cobertura mínima: ATINGIDA

TARDE
Cobertura mínima: NÃO ATINGIDA

Especialidade insuficiente:
Pediatra

Quantidade necessária: 1
Quantidade escalada: 0

NOITE
Cobertura mínima: ATINGIDA

===== PLANTÕES POR PROFISSIONAL =====

ID: 1
Nome: João
Plantões: 2

ID: 2
Nome: Maria
Plantões: 1

ID: 3
Nome: Carlos
Plantões: 0
```

A apresentação visual poderá ser ajustada pela equipe durante o desenvolvimento.

---

## Tarefas

- [ ] Consolidar resultado da Manhã.
- [ ] Consolidar resultado da Tarde.
- [ ] Consolidar resultado da Noite.
- [ ] Consolidar insuficiências.
- [ ] Apresentar quantidade de plantões por profissional.
- [ ] Organizar as informações no console.
- [ ] Garantir clareza das mensagens.

---

## Dependências

- US12 — Validar cobertura.
- US13 — Informar insuficiências.
- US14 — Contagem de plantões.

---

# 16. Regras de Negócio da Sprint 2

## R1 — Identificador único

Não podem existir dois médicos cadastrados com o mesmo identificador.

Uma tentativa de cadastro utilizando um identificador já existente deverá ser recusada.

---

## R2 — Especialidade do profissional

Um médico somente poderá ser escalado na especialidade registrada em seu cadastro.

Exemplo:

Um profissional cadastrado como:

```text
Pediatra
```

não poderá ocupar um posto de:

```text
Clínico Geral
```

---

## R3 — Um posto por turno

Um profissional não poderá ocupar dois postos diferentes dentro do mesmo turno.

Exemplo:

Se o profissional já estiver escalado no turno da Manhã, não poderá ser incluído novamente em outro posto também na Manhã.

---

## R4 — Máximo de dois plantões no dia

Um profissional poderá possuir no máximo dois plantões no mesmo dia.

Não existe nenhuma restrição adicional sobre os turnos serem sequenciais.

Portanto, poderão ocorrer combinações como:

```text
Manhã + Tarde
```

```text
Manhã + Noite
```

```text
Tarde + Noite
```

desde que todas as outras regras sejam respeitadas.

Uma tentativa de terceiro plantão no mesmo dia deverá ser recusada.

---

## R5 — Disponibilidade

Um profissional somente poderá ser escalado em um turno para o qual esteja registrado como disponível.

A disponibilidade é definida no momento do cadastro.

Exemplo:

Se um profissional possuir:

```text
Manhã: disponível
Tarde: disponível
Noite: indisponível
```

ele não poderá ser escalado no turno da Noite.

---

## R6 — Capacidade máxima de cadastro

A equipe propõe uma capacidade máxima de:

```text
50 profissionais
```

durante uma única execução do sistema.

Ao atingir essa quantidade, novas tentativas de cadastro deverão ser recusadas.

O sistema deverá informar claramente:

```text
Capacidade máxima de profissionais atingida.
```

**Status da regra:** Proposta da equipe — pendente de validação do cliente/P2.

---

## R7 — Cobertura mínima

A cobertura deverá ser validada separadamente para cada turno.

| Especialidade | Manhã | Tarde | Noite |
|---|---:|---:|---:|
| Clínico Geral | 2 | 2 | 2 |
| Pediatra | 1 | 1 | 1 |
| Cirurgião | 1 | 1 | 1 |

Todos os mínimos precisam ser atingidos para que um turno seja considerado completamente coberto.

---

# 17. Dimensionamento mínimo da equipe

Um dia completamente coberto possui:

```text
4 postos por turno
```

Como existem três turnos:

```text
4 x 3 = 12 postos
```

Como cada profissional pode ocupar no máximo dois plantões no dia, o dimensionamento mínimo capaz de possibilitar a cobertura completa é:

```text
3 Clínicos Gerais
2 Pediatras
2 Cirurgiões
```

Total:

```text
7 médicos
```

Esse valor representa apenas o número mínimo necessário para tornar possível uma escala completa.

O sistema não deverá exigir obrigatoriamente o cadastro de pelo menos sete médicos.

Caso menos profissionais sejam cadastrados, o sistema deverá continuar funcionando normalmente.

Nesse caso, a impossibilidade de cobrir algum turno será apresentada como diagnóstico da escala.

---

# 18. Cenários de Teste da Sprint 2

## CT2-01 — Cadastro de múltiplos profissionais

### Objetivo

Verificar se o sistema consegue cadastrar vários profissionais durante a mesma execução.

### Resultado esperado

Todos os profissionais válidos deverão ser armazenados corretamente.

---

## CT2-02 — Identificador duplicado

### Objetivo

Verificar a regra R1.

### Procedimento

Cadastrar um profissional com determinado identificador e posteriormente tentar cadastrar outro utilizando o mesmo identificador.

### Resultado esperado

O segundo cadastro deverá ser recusado.

---

## CT2-03 — Consulta da lista completa

### Objetivo

Verificar se todos os profissionais cadastrados podem ser consultados.

### Resultado esperado

O sistema deverá apresentar:

- identificador;
- nome;
- especialidade;
- disponibilidade;

de cada profissional cadastrado.

---

## CT2-04 — Lista vazia

### Objetivo

Verificar o comportamento da listagem quando ainda não existe nenhum profissional.

### Resultado esperado

O sistema deverá informar que não existem profissionais cadastrados.

---

## CT2-05 — Busca por identificador existente

### Resultado esperado

O profissional deverá ser localizado e suas informações apresentadas.

---

## CT2-06 — Busca por identificador inexistente

### Resultado esperado

O sistema deverá informar:

```text
Profissional não encontrado.
```

---

## CT2-07 — Escalação válida

### Objetivo

Verificar se uma atribuição que respeita todas as regras é realizada corretamente.

### Resultado esperado

O profissional deverá ser incluído no turno escolhido.

---

## CT2-08 — Especialidade incompatível

### Objetivo

Verificar a regra R2.

### Exemplo

Profissional:

```text
Especialidade cadastrada: Pediatra
```

Tentativa:

```text
Escalar como Clínico Geral
```

### Resultado esperado

A escalação deverá ser recusada.

---

## CT2-09 — Mesmo profissional duas vezes no mesmo turno

### Objetivo

Verificar a regra R3.

### Resultado esperado

A segunda tentativa deverá ser recusada.

---

## CT2-10 — Terceiro plantão no dia

### Objetivo

Verificar a regra R4.

### Exemplo

Profissional já escalado em:

```text
Manhã
Tarde
```

Tentativa:

```text
Noite
```

### Resultado esperado

A escalação deverá ser recusada.

---

## CT2-11 — Profissional indisponível

### Objetivo

Verificar a regra R5.

### Exemplo

```text
Disponibilidade à noite: NÃO
```

Tentativa:

```text
Escalar no turno da Noite
```

### Resultado esperado

A escalação deverá ser recusada.

---

## CT2-12 — Capacidade máxima

### Objetivo

Verificar a regra R6 após validação do limite pelo cliente/P2.

### Procedimento

Cadastrar profissionais até atingir a capacidade máxima e tentar realizar um cadastro adicional.

### Resultado esperado

O cadastro adicional deverá ser recusado.

---

## CT2-13 — Turno incompleto

### Objetivo

Verificar a regra R7.

### Resultado esperado

O sistema deverá informar:

- qual turno ficou incompleto;
- qual especialidade está insuficiente;
- quantidade mínima necessária;
- quantidade escalada.

---

## CT2-14 — Contagem de plantões

### Objetivo

Verificar a quantidade de plantões atribuída a cada profissional.

### Resultado esperado

Os contadores deverão corresponder às escalações válidas realizadas.

---

## CT2-15 — Resumo do dia

### Objetivo

Verificar a apresentação consolidada das informações.

### Resultado esperado

O sistema deverá apresentar:

- situação da Manhã;
- situação da Tarde;
- situação da Noite;
- insuficiências;
- quantidade de plantões de cada profissional.

---

# 19. Cenários obrigatórios para a Sprint Review

Durante a Sprint Review, a equipe deverá estar preparada para demonstrar:

1. cadastro de múltiplos profissionais;
2. tentativa de cadastro com identificador duplicado;
3. consulta da lista completa de profissionais cadastrados;
4. busca por identificador existente;
5. busca por identificador inexistente;
6. uma escalação válida;
7. tentativa de escalação com especialidade incompatível;
8. tentativa de terceiro plantão no mesmo dia;
9. validação dos três turnos;
10. pelo menos um turno com cobertura insuficiente;
11. resumo com a quantidade de plantões atribuída a cada profissional;
12. resumo geral do dia.

Os diferentes cenários deverão ser demonstrados no VisuAlg através dos dados informados durante a execução.

Não deverá ser necessário modificar o código-fonte entre os cenários.

---

# 20. Fora do escopo da Sprint 2

Não fazem parte da Sprint 2:

- análise de mais de um dia;
- relatórios com indicadores agregados;
- persistência de dados entre execuções;
- banco de dados permanente;
- armazenamento permanente de médicos;
- armazenamento permanente das escalas.

A busca por nome também não é obrigatória nesta Sprint.

A busca obrigatória será realizada através do identificador numérico.

---

# 21. Restrições técnicas

O desenvolvimento deverá respeitar as limitações do VisuAlg definidas para o projeto.

Entre elas:

- ausência de tipo `registro`;
- vetores e matrizes limitados a duas dimensões;
- ausência de persistência permanente de dados;
- necessidade de utilizar estruturas compatíveis com a versão adotada pela equipe.

Como o VisuAlg não possui tipo `registro`, a equipe poderá representar os profissionais utilizando estruturas paralelas.

Exemplo conceitual:

```text
id[]
nome[]
especialidade[]
disponibilidadeManha[]
disponibilidadeTarde[]
disponibilidadeNoite[]
quantidadePlantoes[]
```

A implementação definitiva será uma decisão técnica da equipe.

---

# 22. Definition of Ready

Antes do desenvolvimento de uma User Story, a equipe deverá verificar se:

- a necessidade está clara;
- os critérios de aceitação estão definidos;
- as regras relacionadas foram identificadas;
- o cenário válido está previsto;
- os cenários inválidos estão previstos;
- as dependências estão identificadas;
- a equipe compreende a implementação;
- a funcionalidade pode ser demonstrada no VisuAlg;
- não é necessário modificar o código entre os diferentes cenários.

---

# 23. Definition of Done

Uma User Story poderá ser considerada concluída quando:

- estiver implementada no VisuAlg;
- executar sem erros;
- atender aos critérios de aceitação;
- respeitar as regras de negócio;
- tratar entradas inválidas;
- possuir mensagens claras;
- possuir cenário válido testado;
- possuir cenários inválidos testados, quando aplicável;
- estiver integrada ao restante do sistema;
- estiver versionada no GitHub;
- estiver pronta para demonstração na Sprint Review.

---

# 24. Ordem técnica sugerida de desenvolvimento

A ordem abaixo considera dependências técnicas e não representa necessariamente prioridade de negócio.

```text
US07 — Cadastro de profissionais
        ↓
US08 — Listagem completa
        ↓
US09 — Busca por identificador
        ↓
US10 — Escalação
        ↓
US11 — Validações da escalação
        ↓
US12 — Cobertura dos turnos
        ↓
US13 — Diagnóstico de insuficiências
        ↓
US14 — Contagem de plantões
        ↓
US15 — Resumo do dia
```

---

# 25. Pendência de validação

Permanece pendente apenas a validação do cliente/P2 sobre a proposta de capacidade máxima de cadastro.

### Proposta da equipe

```text
50 profissionais
```

### Status

```text
Pendente de validação do cliente/P2
```

Caso o cliente aprove o valor, a regra R6 deverá ser considerada confirmada.

Caso solicite alteração, o número deverá ser atualizado neste documento e nos demais documentos relacionados.

---

# 26. Status geral

**Sprint Backlog da Sprint 2:** Estruturado para desenvolvimento.

As necessidades apresentadas pelo cliente foram transformadas em User Stories, tarefas, critérios de aceitação, regras de negócio e cenários de teste.

Foram incorporados os esclarecimentos adicionais do cliente sobre:

- disponibilidade como parte do cadastro;
- diferença entre disponibilidade e escalação;
- máximo de dois plantões no mesmo dia;
- inexistência de restrição sobre plantões consecutivos;
- consulta da lista completa de profissionais;
- tratamento da especialidade incompatível durante a escalação;
- proposta concreta de capacidade máxima.

A única regra ainda pendente de confirmação externa é o valor de **50 profissionais como capacidade máxima de cadastro**, que deverá ser validado pelo cliente/P2.
