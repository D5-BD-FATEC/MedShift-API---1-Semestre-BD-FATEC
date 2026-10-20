# 🩺 MedShift

<p align="center">
  <img src="https://img.shields.io/badge/FATEC-S%C3%A3o%20Jos%C3%A9%20dos%20Campos-176B87?style=for-the-badge" alt="FATEC São José dos Campos" />
  <img src="https://img.shields.io/badge/Disciplina-Banco%20de%20Dados-6750A4?style=for-the-badge" alt="Banco de Dados" />
  <img src="https://img.shields.io/badge/Per%C3%ADodo-2026%2F2-168A72?style=for-the-badge" alt="Período 2026/2" />
</p>

<p align="center">
  <strong>🏥 Organização inteligente de escalas de plantões médicos</strong>
</p>

<p align="center">
  Um projeto acadêmico para análise e validação de escalas hospitalares utilizando Visualg.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Em%20desenvolvimento-DB9B32?style=flat-square&logo=github" alt="Em desenvolvimento" />
  <img src="https://img.shields.io/badge/Metodologia-Scrum-6C63FF?style=flat-square" alt="Scrum" />
  <img src="https://img.shields.io/badge/Linguagem-Visualg-2188FF?style=flat-square" alt="Visualg" />
</p>

---

## 📌 Sobre o projeto

O **MedShift** é um sistema desenvolvido para apoiar a análise e a validação de plantões médicos do hospital fictício **Santa Aurora**.

O sistema tem como objetivo auxiliar a coordenação hospitalar a identificar se um plantão possui cobertura adequada e apresentar os motivos pelos quais uma escala não pode ser publicada.

### 🎯 Objetivos

- 👨‍⚕️ Verificar a cobertura mínima de profissionais por especialidade.
- 📋 Apoiar a organização e a análise das escalas médicas.
- ✅ Validar os critérios necessários para a publicação de um plantão.
- 🔎 Identificar problemas de cobertura e apresentar motivos para a reprovação.
- 🧩 Organizar o desenvolvimento por meio de sprints e documentação colaborativa.

---

## 🚨 O desafio

O Hospital Santa Aurora possui médicos de diferentes especialidades trabalhando em regime de plantão.

Atualmente, a montagem e a conferência das escalas são realizadas manualmente, o que pode ocasionar:

| Problema | Impacto |
| --- | --- |
| ⚠️ Falta de profissionais | Cobertura insuficiente em determinados turnos |
| 🩺 Ausência de especialidades | Plantões sem atendimento especializado adequado |
| 🔄 Retrabalho | Necessidade de revisar escalas manualmente |
| ❌ Falhas de validação | Publicação de escalas que não atendem aos critérios |

O MedShift busca auxiliar a coordenação na análise dessas escalas por meio de **regras claras de validação**, tornando a conferência mais organizada e consistente.

---

## 🛠️ Tecnologias e ferramentas

<p>
  <img src="https://img.shields.io/badge/Visualg-Algoritmos-2188FF?style=flat-square" alt="Visualg" />
  <img src="https://img.shields.io/badge/Git-Controle%20de%20vers%C3%A3o-F05032?style=flat-square&logo=git&logoColor=white" alt="Git" />
  <img src="https://img.shields.io/badge/GitHub-Colabora%C3%A7%C3%A3o-181717?style=flat-square&logo=github" alt="GitHub" />
  <img src="https://img.shields.io/badge/Scrum-Metodologia-6750A4?style=flat-square" alt="Scrum" />
</p>

- **Visualg:** desenvolvimento dos algoritmos do sistema.
- **Git:** controle de versão do código e da documentação.
- **GitHub:** hospedagem do repositório e colaboração entre integrantes.
- **Scrum:** organização das atividades e entregas em sprints.

---

## 🗺️ Navegação do projeto

| 📂 Documento | 📝 Descrição |
| --- | --- |
| [📚 Product Backlog](docs/backlog/product-backlog.md) | Lista de requisitos e funcionalidades |
| [🌱 Estratégia de Branches](docs/branch-strategy.md) | Organização do fluxo de desenvolvimento |
| [✍️ Padrão de Commits](docs/commit-pattern.md) | Convenções para mensagens de commit |
| [⚙️ Manual de Instalação](docs/manual-instalacao.md) | Orientações de instalação |
| [📖 Manual do Usuário](docs/manual-usuario.md) | Orientações para utilização do sistema |

---

## 🚀 Sprints do projeto

### 🟣 Sprint 1 — Análise e validação de plantões

**🎯 Meta da Sprint**

Permitir que a coordenação hospitalar analise um plantão médico, verifique se há cobertura mínima de profissionais por especialidade e receba uma conclusão clara informando se o plantão pode ou não ser publicado.

**📑 Documentação da Sprint 1**

- 📋 [Sprint Backlog](docs/sprint-1/sprint-backlog.md)
- 🟢 [Definition of Ready — DoR](docs/sprint-1/DoR.md)
- 🔵 [Definition of Done — DoD](docs/sprint-1/DoD.md)
- 🧪 [Cenários de Teste](docs/sprint-1/testes.md)
- 🧠 [Registro de Decisões](docs/sprint-1/decisoes.md)

### 🔵 Sprint 2 — Cadastro e distribuição da equipe médica

**🎯 Meta da Sprint**

Permitir o cadastro da equipe médica, a consulta dos profissionais cadastrados e a distribuição dos profissionais entre os três turnos de um único dia, respeitando as regras de disponibilidade, especialidade e quantidade de plantões.

**📑 Documentação da Sprint 2**

- 📋 [Sprint Backlog — Sprint 2](docs/sprint-2/sprint-backlog.md)

---

## 👥 Equipe de desenvolvimento

Projeto desenvolvido por alunos do **1º semestre de 2026/2 do curso de Banco de Dados da FATEC de São José dos Campos**.

| Integrante | Papel no Scrum |
| --- | --- |
| **Lucas Augusto** | 🎯 Product Owner |
| **Fernanda Martins** | 🔄 Scrum Master |
| **Augusto Rocha** | 💻 Desenvolvedor |
| **Arthur Peres** | 💻 Desenvolvedor |

---

## 🌿 Organização do desenvolvimento

O MedShift utiliza uma estratégia de branches para manter a branch principal estável e facilitar a organização das alterações realizadas pela equipe.

Novas funcionalidades, correções, testes e alterações de documentação devem ser desenvolvidos em branches específicas e posteriormente integrados à `main` por meio de Pull Requests.

### 🔀 Fluxo de trabalho

1. 🌱 Criar uma branch específica para a atividade.
2. 💻 Desenvolver a funcionalidade ou realizar a alteração.
3. ✍️ Registrar as mudanças utilizando o padrão de commits do projeto.
4. 🔍 Abrir um Pull Request para revisão.
5. ✅ Integrar as alterações à branch `main` após a revisão.

**📚 Documentos de referência**

- [🌿 Estratégia de Branches](docs/branch-strategy.md)
- [✍️ Padrão de Mens
