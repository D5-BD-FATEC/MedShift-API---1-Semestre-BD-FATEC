
<p align="center">
  <strong>🩺 MedShift · Planejamento da Sprint 2</strong>
</p>

<p align="center">
  <em>Divisão dos blocos de desenvolvimento</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Sprint-02-6750A4?style=for-the-badge" alt="Sprint 2" />
  <img src="https://img.shields.io/badge/Blocos-04-176B87?style=for-the-badge" alt="Quatro blocos" />
  <img src="https://img.shields.io/badge/Metodologia-Scrum-168A72?style=for-the-badge" alt="Scrum" />
</p>

A Sprint 2 está dividida em **quatro blocos sequenciais**, cada um responsável por um conjunto de funcionalidades do sistema de escala médica. A sequência organiza o trabalho desde o cadastro de profissionais até a apresentação de um resumo geral da escala.

## 🧭 Navegação

- [📊 Resumo da divisão](#-resumo-da-divisão)
- [🧑‍💻 Bloco 1 — Arthur](#-bloco-1--arthur)
- [🧩 Bloco 2 — Augusto](#-bloco-2--augusto)
- [🩺 Bloco 3 — Fernanda](#-bloco-3--fernanda)
- [📈 Bloco 4 — Lucas](#-bloco-4--lucas)
- [🔗 Dependências entre os blocos](#-dependências-entre-os-blocos)
- [➡️ Próximo passo recomendado](#️-próximo-passo-recomendado)

---

## 📊 Resumo da divisão

| Bloco | Responsável | User Stories | Foco |
|---|---|---|---|
| 🟣 **1** | Arthur | US07, US08 e US09 | Cadastro e consulta de profissionais |
| 🔵 **2** | Augusto | US10 e US11 | Construção e validação da escala |
| 🟢 **3** | Fernanda | US12 e US13 | Análise da cobertura dos turnos |
| 🟠 **4** | Lucas | US14 e US15 | Indicadores e resumo geral |

## 🧑‍💻 Bloco 1 — Arthur

> **Tema:** Cadastro e consulta da equipe  
> **User Stories:** US07, US08 e US09

### 🎯 Objetivo
Criar a base de profissionais que será utilizada por todas as outras funcionalidades do sistema.

### 📋 US07 — Cadastro de profissionais
- **Descrição:** Como coordenador de escala, quero cadastrar os profissionais da equipe médica, para que eles possam ser utilizados na construção da escala do dia.
- **Situação:** Concluída.
- **Prioridade:** 1 — Muito alta.
- **Justificativa:** Todas as outras funcionalidades dependem dos profissionais cadastrados.

### 📋 US08 — Listagem de profissionais
- **Descrição:** Como coordenador de escala, quero visualizar a lista de todos os profissionais cadastrados, para ter uma visão geral da equipe médica disponível.
- **Situação:** Concluída.
- **Prioridade:** 2 — Muito alta.
- **Justificativa:** Permite conferir se os cadastros foram armazenados corretamente.

### 🔎 US09 — Localização por ID
- **Descrição:** Como coordenador de escala, quero localizar um profissional pelo identificador numérico, para consultar rapidamente seus dados.
- **Situação:** Próxima.
- **Prioridade:** 3 — Alta.
- **Justificativa:** A busca pelo ID será necessária para selecionar um profissional e atribuí-lo a um turno.

### 🔢 Ordem de desenvolvimento
1. US07 — Cadastrar profissionais.
2. US08 — Listar profissionais.
3. US09 — Buscar profissional por ID.

### ✅ Resultado esperado
- Cadastrar profissionais.
- Gerar um ID automático.
- Listar todos os profissionais cadastrados.
- Localizar um profissional específico pelo ID.

---

## 🧩 Bloco 2 — Augusto

> **Tema:** Construção e validação da escala  
> **User Stories:** US10 e US11

### 🎯 Objetivo
Permitir que o coordenador selecione um profissional cadastrado e atribua esse profissional a um turno, evitando erros de escalação.

### 📋 US10 — Atribuição de profissional ao turno
- **Descrição:** Como coordenador de escala, quero atribuir um profissional cadastrado a um turno do dia, para construir a escala médica.
- **Situação:** Pendente.
- **Prioridade:** 4 — Alta.
- **Dependências:** US07 e US09.
- **Justificativa:** O profissional precisa estar cadastrado e ser localizado antes de receber um turno.

### 🛡️ US11 — Validação da escalação
- **Descrição:** Como coordenador de escala, quero que o sistema valide cada tentativa de escalação, para impedir conflitos e atribuições incorretas.
- **Situação:** Pendente.
- **Prioridade:** 5 — Muito alta.
- **Dependência:** US10.
- **Justificativa:** Evita que dados incorretos sejam adicionados à escala.

### ☑️ Validações da US11
- [ ] O ID informado existe.
- [ ] O turno informado é válido.
- [ ] Verificar se o profissional já está escalado no mesmo turno.
- [ ] Verificar se o profissional está disponível para o turno.
- [ ] Verificar se o profissional já atingiu algum limite definido de plantões.
- [ ] Verificar se existe espaço disponível no turno.
- [ ] Verificar se a especialidade do profissional é válida.

### 🔢 Ordem de desenvolvimento
1. US10 — Atribuir profissional ao turno.
2. US11 — Validar a tentativa de escalação.

### ✅ Resultado esperado
- Localizar o profissional pelo ID.
- Selecionar Manhã, Tarde ou Noite.
- Atribuir o profissional ao turno.
- Impedir escalas duplicadas ou incorretas.
- Informar claramente o motivo de uma tentativa inválida.

> **💡 Observação:** a US11 deve ser implementada junto da US10. O sistema não deve aceitar uma escalação antes de realizar as validações.

---

## 🩺 Bloco 3 — Fernanda

> **Tema:** Análise da cobertura dos turnos  
> **User Stories:** US12 e US13

### 🎯 Objetivo
Verificar se a escala construída atende à quantidade mínima de profissionais em todos os turnos.

### 📋 US12 — Validação da cobertura dos três turnos
- **Descrição:** Como coordenador de escala, quero validar a cobertura dos três turnos do dia, para saber se Manhã, Tarde e Noite possuem a quantidade mínima necessária de profissionais.
- **Situação:** Pendente.
- **Prioridade:** 6 — Alta.
- **Dependências:** US10 e US11.
- **Justificativa:** A cobertura só pode ser analisada depois que os profissionais forem corretamente escalados.

### 🔎 US13 — Identificação das coberturas insuficientes
- **Descrição:** Como coordenador de escala, quero saber quais turnos e quais especialidades estão com cobertura insuficiente, para identificar os problemas existentes na escala do dia.
- **Situação:** Pendente.
- **Prioridade:** 7 — Alta.
- **Dependência:** US12.
- **Justificativa:** Complementa a validação geral, explicando exatamente por que determinado turno foi reprovado.

### 📏 Regras de cobertura
Cada turno deve contar com, no mínimo:
- 👨‍⚕️ 2 clínicos gerais.
- 🧒 1 pediatra.
- 🩺 1 cirurgião.

A análise será realizada separadamente para **Manhã, Tarde e Noite**.

### 🔢 Ordem de desenvolvimento
1. US12 — Verificar a cobertura dos três turnos.
2. US13 — Mostrar turnos e especialidades insuficientes.

### ✅ Resultado esperado
- Informar se Manhã, Tarde e Noite possuem cobertura adequada.
- Indicar quais especialidades estão insuficientes.
- Mostrar quantos profissionais faltam em cada especialidade.
- Informar se a escala do dia pode ser considerada completa.

---

## 📈 Bloco 4 — Lucas

> **Tema:** Indicadores e resumo da escala  
> **User Stories:** US14 e US15

### 🎯 Objetivo
Apresentar uma visão consolidada da distribuição dos plantões e da situação geral da escala.

### 📋 US14 — Quantidade de plantões por profissional
- **Descrição:** Como coordenador de escala, quero visualizar quantos plantões foram atribuídos a cada profissional, para acompanhar a distribuição dos plantões da equipe.
- **Situação:** Pendente.
- **Prioridade:** 8 — Média.
- **Dependências:** US10 e US11.
- **Justificativa:** Precisa das atribuições realizadas para contabilizar os plantões.

### 📊 US15 — Resumo geral da escala
- **Descrição:** Como coordenador de escala, quero receber um resumo geral da escala do dia, para compreender rapidamente a situação dos três turnos e dos profissionais.
- **Situação:** Pendente.
- **Prioridade:** 9 — Média.
- **Dependências:** US12, US13 e US14.
- **Justificativa:** É a funcionalidade final, pois reúne os resultados produzidos pelas outras User Stories.

### 🧾 Informações do resumo geral
- Total de profissionais cadastrados, escalados e não escalados.
- Profissionais escalados pela manhã, tarde e noite.
- Quantidade de clínicos gerais, pediatras e cirurgiões em cada turno.
- Situação da cobertura de cada turno.
- Especialidades com cobertura insuficiente.
- Quantidade de plantões atribuídos a cada profissional.
- Situação geral da escala do dia.

### 🔢 Ordem de desenvolvimento
1. US14 — Contar os plantões de cada profissional.
2. US15 — Apresentar o resumo geral.

### ✅ Resultado esperado
- Visualizar como os plantões estão distribuídos.
- Identificar quem recebeu mais ou menos plantões.
- Ver quais turnos estão completos.
- Ver quais turnos ainda precisam de profissionais.
- Compreender a situação geral da escala médica.

---

## 🔗 Dependências entre os blocos

A sequência de desenvolvimento será:

<ol>
  <li>**Bloco 1:** Cadastrar e consultar profissionais.</li>
  <li>**Bloco 2:** Atribuir profissionais aos turnos e validar as escalações.</li>
  <li>**Bloco 3:** Verificar a cobertura dos turnos e identificar insuficiências.</li>
  <li>**Bloco 4:** Contabilizar os plantões e apresentar o resumo geral.</li>
</ol>

Os blocos dependem uns dos outros para garantir a integração das funcionalidades e a conclusão da Sprint 2.

---

## ➡️ Próximo passo recomendado

**Desenvolver a US09 — Localização por ID**, pois essa funcionalidade permitirá reutilizar o profissional cadastrado na construção e validação da escala.
