#import "@preview/touying:0.7.3": *
#import "@local/touying-ufac:0.0.1": *
#import "@preview/lilaq:0.6.0" as lq


#show: ufac-theme.with(aspect-ratio: "16-9", progress-bar: false, config-info(
  title: [Introdução aos sistemas de controle],
  subtitle: [Parte I - Introdução],
  author: [Prof. Dr. Lucas Lima Rodrigues],
  subject: [Processamento Digital de Sinais],
  subject-code: [CCET387],
))

#title-slide()

= Apresentação do curso

== Plataformas de apoio

// === WhatsApp (Grupo)

Link do grupo: \
#note-box(color: colors.safe)[#icon-inline(
    "link",
    color: luma(100),
  ) #safe[Acesse este link para entrar no meu grupo do WhatsApp: https://chat.whatsapp.com/FDi96oTG8wYFBtXrc1CmHH]
]
#figure(
  image("assets/grupo.jpeg", height: 50%),
)

== Google Classroom
#grid(
  columns: (1fr, 1fr),
  align: horizon,
  text(size: 1.35em)[Código da turma: *djlqckpi*], figure(image("assets/codigo-classroom.png", width: 95%)),
)

=== Github (Aulas e materiais)
#figure(image("./assets/github.png", height: 60%))

#note-box(color: colors.safe)[#icon-inline(
    "link",
    color: luma(100),
  ) #safe[https://github.com/lucaslrodri/UFAC-PPGEE016-redes-neurais-pos]
]

== Ementa oficial

#columns(2)[
  - Introdução e Motivação;
  - Base Biológica: Aspectos Funcionais e Organizacionais;
  - Fundamentos Básicos de Álgebra Linear e Otimização;
  - Redes Neurais Não-Recorrentes;
  - Redes Neurais Recorrentes;
  - Mapas Auto-Organizáveis e Aprendizado Não-Supervisionado;
  - Regularização e outras máquinas de aprendizado;
  - Deep Learning: Otimização não-linear e funções-custo;
  - Redes Convolucionais;
  - Dropout;
  - Bloco Long Short Term Memory (LSTM);
  - Aprendizado da Representação;
  - Manifolds;
  - Autoencoders;
  - Restricted Boltzmann Machines;
]

---

- Processamento de Linguagem Natural;
- Modelos de Atenção;
- Redes Adversárias Generativas;
- Interpretação da Rede Neural Treinada;
- Aprendizado por Reforço.

== Objetivos do curso

#fancy-box(title: [Objetivo principal])[
  Introduzir os conceitos fundamentais de redes neurais com ênfase em aspectos teóricos e práticos, capacitando-os a aplicar esses conhecimentos em diversos problemas da engenharia e ciência.apacitar o aluno para desenvolver sistemas de processamento de sinais digitais e realizar sua implementação em dispositivos dedicados.
]

---

=== Objetivos específicos
- Introduzir os conceitos fundamentais de redes neurais;
- Introduzir os conceitos matemáticos necessários para o entendimento de redes neurais;
- Analisar e implementar diferentes arquiteturas de redes neurais;
- Apresentar estratégias de otimização e treinamento de redes neurais;
- Apresentar principais métricas de avaliação de desempenho de redes neurais;
- Habilitar os estudantes no desenvolvimento de redes neurais em aplicações práticas.
== Estrutura do curso

#let unidades-tematicas = (
  "Introdução de redes neurais",
  "Redes neurais perceptron e perceptron multicamada",
  "Avalição de desempenho de redes neurais",
  "Aprendizado supervisionado",
  "Redes neurais convolucionais",
)

Consiste em #unidades-tematicas.len() unidades temáticas:

#for (unidade, assunto) in unidades-tematicas.enumerate(start: 1) [
  / Unidade #numbering("I", unidade): #assunto
]

---

=== Unidade I: Introdução de redes neurais
- História das redes neurais;
- Relação entre redes neurais e o cérebro biológico;
- Aplicações de redes neurais em diferentes áreas;
- Visão geral dos tipos de redes neurais e suas arquiteturas;
- Tipos de aprendizado: supervisionado, não-supervisionado e por reforço.

---

=== Unidade II: Redes neurais perceptron e perceptron multicamada
- Rede Perceptron;
- Perceptron Multicamadas (MLP);
- Função de ativação;
- Algoritmo de aprendizado do perceptron;
- Backpropagation.

=== Unidade III: Avalição de desempenho de redes neurais
- Métricas de avaliação: acurácia, precisão, revocação, F1-score;
- Curva ROC;
- Curva precisão-revocação;
- K-fold cross-validation (Validação cruzada);
- Matriz de confusão;
- Interpretação de resultados e análise de erros.

=== Unidade IV: Aprendizado supervisionado
- Função de perda (Loss);
- Treinamento (Fitting): Gradiente Descendente, Gradiente Descendente Estocástico, Adam e outros otimizadores;
- Ruído, viés e variância (Noise, bias and variance);
- Aprendizado em lotes;
- Overfitting e underfitting;
- Técnicas de normalização (Batch Normalization e Layer Normalization);
- Vanish e Exploding Gradients;
- Regularização (Dropout, L1 e L2).

=== Unidade V: Redes neurais convolucionais
- Introdução às redes neurais convolucionais (CNNs);
- Camadas convolucionais e de pooling;
- Arquiteturas populares de CNNs (LeNet, AlexNet, VGG, ResNet);
- Aplicações de CNNs em visão computacional e outras áreas.


== Cronograma previsto

// #let primary-cell(body, side: "center") = {
//   if side == "left" {
//     table.cell(fill: colors.primary, stroke: colors.light)[
//       #set text(fill: colors.light, weight: "bold")
//       #body
//     ]
//   }else if side == "right" {
//     table.cell(fill: colors.primary, stroke: colors.light)[
//       #set text(fill: colors.light, weight: "bold")
//       #body
//     ]
//   }else {
//     table.cell(fill: colors.primary, stroke: colors.light)[
//       #set text(fill: colors.light, weight: "bold")
//       #body
//     ]
//   }
// }

#block[
  #set text(size: .892em)
  #table(
    align: center + horizon,
    columns: (1fr, auto, auto, auto),
    table.header([Assunto], [Encontros], [Aulas], [Carga horária]),
    [I – Introdução de redes neurais], [3], [6], [6h],
    [II – Redes neurais perceptron e perceptron multicamada], [5], [10], [10h],
    [III – Avalição de desempenho de redes neurais], [4], [8], [8h],
    [IV – Aprendizado supervisionado], [8], [16], [16h],
    [V – Redes neurais convolucionais], [6], [12], [12h],
    [*Carga horária total*], [*30*], [*60*], [*60h*],
  )
]

== Bibliografia

=== Principal

#figure(
  image("assets/livro-principal.jpg", height: 70%),
  caption: [PRINCE, Simon J. D. *Understanding Deep Learning*. Cambridge: MIT Press, 2023.],
)

---

=== Complementar

- BROWNLEE, Jason. *Basics of Linear Algebra for Machine Learning: Discover the Mathematical Language of Data in Python*. [S. l.]: Machine Learning Mastery, 2018.
- MICHELUCCI, Umberto. *Applied Deep Learning: A Case-Based Approach to Understanding Deep Neural Networks*. Berkeley: Apress, 2018.
- ZINOVIEV, Dmitry. *Data Science Essentials in Python: Collect - Organize - Explore - Predict - Value*. Raleigh: Pragmatic Bookshelf, 2016.
- RUSSELL, Stuart J.; NORVIG, Peter. *Inteligência artificial: uma abordagem moderna*. 4. ed. Rio de Janeiro: LTC, 2022.

== Avaliações

=== Visão geral

As avaliações das disciplinas serão compostas por:
- $E$ - Exercícios práticos de implementação;
- $T_1$ - Seminário sobre outras arquiteturas;
- $T_2$ - Artigo (Apresentação + Artigo).
// ---

=== Média final

A média final, $N_f$, será dada por:
$
  N_f = ("0,3" dot E + "0,3" dot T_1 + "0,4" dot T_2)
$

---

=== Conceito final

O conceito final da disciplina será atribuído de acordo com a relação abaixo:
- Conceito A: Nota entre 10 e 8,01);
- Conceito B: Nota entre 8 e 6,51);
- Conceito C: Nota entre 6,5 e 5,01);
- Conceito D: Nota menor que 5).

---
=== Sobre os Exercícios

- Compreendem em exercícios teóricos e práticos;
- Os exercícios práticos serão feitos na linguagem de programação Python usando frameworks populares como TensorFlow, Pytorch, Scikit-learn, Keras, etc.

==== Exercícios teóricos
 - Devem ser entregues a mão digitalizados em pdf no Classroom.
 ==== Exercícios práticos
 - Devem ser entregue o código (Jupyter Notebook ou no Colab) e o relatório (Em pdf) no Classroom.

---

=== Trabalho 1 - Seminário sobre outras arquiteturas

- Cada equipe irá escolher um ou dois temas relacionado a redes neurais para apresentar um seminário. 
- O seminário deve consiste em uma apresentação oral. 
- O tema do seminário deve ser aprovado pelo professor.
- A equipe será composta por 1 (individual) ou 2 (dupla) estudantes.

---
=== Trabalho 1 - Seminário sobre outras arquiteturas
Exemplos de temas para o seminário:
- Redes Neurais Recorrentes (RNNs);
- Mapas Auto-Organizáveis;
- Redes Neurais de Memória de Longo Prazo (LSTM);
- Restricted Boltzmann Machines (RBMs);
- Processamento de Linguagem Natural (NLP);
- Modelos de Atenção;
- Aprendizado por reforço.

---

=== Artigo (Apresentação + Artigo)

- Tema livre relacionado a redes neurais;
- O artigo deve ser escrito em formato de artigo científico (Padrão IEEE), com no mínimo 4 páginas e no máximo 6 páginas;
- O artigo deve ser entregue em pdf no Classroom;
- O artigo deve ser apresentado oralmente na sala de aula;
- O artigo será apresentado de forma individual.