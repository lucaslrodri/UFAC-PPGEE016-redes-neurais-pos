#import "@preview/touying:0.7.3": *
#import "@local/touying-ufac:0.0.1": *
#import "@preview/lilaq:0.6.0" as lq
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/cetz:0.4.2"


#show: ufac-theme.with(aspect-ratio: "16-9", progress-bar: false, config-info(
  title: [Introdução às redes neurais],
  subtitle: [Parte I - Introdução],
  author: [Prof. Dr. Lucas Lima Rodrigues],
  subject: [Redes Neurais],
  subject-code: [PPGEE016],
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
  Introduzir os conceitos fundamentais de redes neurais com ênfase em aspectos teóricos e práticos, capacitando-os a aplicar esses conhecimentos em diversos problemas da engenharia e ciência.
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

=== Unidade III: Avaliação de desempenho de redes neurais
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
- Transferência de aprendizado com CNNs;
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
    [III – Avaliação de desempenho de redes neurais], [4], [8], [8h],
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
- Conceito A: Nota entre 10 e 8,01;
- Conceito B: Nota entre 8 e 6,51;
- Conceito C: Nota entre 6,5 e 5,01;
- Conceito D: Nota menor que 5;

---
=== Sobre os Exercícios

- Compreendem em exercícios teóricos e práticos;
- Os exercícios práticos serão feitos na linguagem de programação Python usando frameworks populares como TensorFlow, Pytorch, Scikit-learn, Keras, etc.

==== Exercícios teóricos
- Devem ser entregues a mão digitalizados em pdf no Classroom.
==== Exercícios práticos
- Devem ser entregue o código (Jupyter Notebook ou no Colab) e o relatório (Em pdf) no Classroom ou Github.

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

= História das redes neurais

== Rede Neural artificial

#note-box[
  #set align(center)
  Modelo computacional inspirado bioinspirado (neurônios, sinapses e reforços)
]

#figure(image("assets/cerebro-humano.png"), caption: [O cérebro humano, a máquina mais fantástica que conhecemos.])

---

== Principais aplicações

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2.5em,
  align: horizon,
  figure(image("assets/aplicacoes/1-classificacao-cam-algoritmo.png"), caption: [Classificação de padrões]),
  figure(image("assets/aplicacoes/2-aproximacao.png"), caption: [Aproximação de funções e identificação de sistemas]),
)

---

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2.5em,
  align: center,
  figure(image("assets/aplicacoes/3-predicao.png"), caption: [Predição e extrapolação]),
  figure(image("assets/aplicacoes/4-otimizacao.png", height: 12em), caption: [Otimização]),
)

---

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2.5em,
  align: center,
  figure(image("assets/aplicacoes/5-robo-aprendendo-sozinho.png"), caption: [Aprendizado de máquina e _deep learning_]),
  figure(
    image("assets/aplicacoes/6-clustering.png"),
    caption: [Agrupamento e redução de dimensionalidade (_clustering_)],
  ),
)

== Vantagens: não-linearidade

#grid(
  columns: (1.05fr, 1fr),
  align: horizon,
  gutter: 2.5em,
  [
    #v(1.5em)
    - Redes neurais modelam *relações não-lineares* complexas entre entradas e saídas — algo que modelos lineares não capturam;
    - Empilhando neurônios com *ativações não-lineares*, a rede aprende *fronteiras de decisão* curvas e funções arbitrárias.
  ],
  figure(
    image("assets/aplicacoes/vant-naolinear.png"),
    caption: [Fronteira de decisão não-linear],
  ),
)

== Vantagens: generalização

#grid(
  columns: (1.05fr, 1fr),
  align: top,
  gutter: 2.5em,
  [
    #v(1.5em)
    - Uma rede treinada produz saídas *razoáveis* mesmo para entradas *não vistas* no treinamento;
    - Ela *interpola* entre os exemplos conhecidos e, com cautela, *extrapola* além deles — o que permite usá-la em dados novos.
  ],
  figure(
    image("assets/aplicacoes/vant-generalizacao.png"),
    caption: [Interpolação com incerteza (_kriging_)],
  ),
)

== Vantagens: adaptabilidade

#grid(
  columns: (1.05fr, 1fr),
  align: horizon,
  gutter: 2.5em,
  [
    #v(1.5em)
    - Uma rede treinada para certas condições pode ser *retreinada* (ou *ajustada*) para operar em ambientes com leves diferenças;
    - Reaproveita o conhecimento já aprendido, em vez de começar do zero (*transferência de aprendizado*).
  ],
  figure(
    image("assets/aplicacoes/vant-adaptabilidade.png"),
    caption: [Transferência de aprendizado],
  ),
)

== Vantagens: medida quantitativa da incerteza

#grid(
  columns: (1.05fr, 1fr),
  align: horizon,
  gutter: 2.5em,
  [
    #v(1.5em)
    - Na classificação de padrões, a saída da rede pode ser *avaliada* como uma *métrica de confiança* sobre a decisão tomada;
    - Por exemplo, a função *softmax* converte os escores em *probabilidades* por classe, ajudando a lidar com *ambiguidades*.
  ],
  figure(
    image("assets/aplicacoes/vant-incerteza.png"),
    caption: [Saída _softmax_: probabilidades por classe],
  ),
)
== Uma linha do tempo

#v(1em)

#figure(
  cetz.canvas(length: 0.92cm, {
    import cetz.draw: *

    // marcos: (posição x, ano, descrição, cor)
    let marcos = (
      (0.8, "1943", [Neurônio de \ McCulloch--Pitts], colors.primary),
      (3.3, "1958", [Perceptron \ (Rosenblatt)], colors.primary),
      (5.8, "1969", [Minsky & Papert: \ problema do XOR], colors.danger),
      (8.3, "1986", [Backpropagation \ e livro PDP], colors.safe),
      (10.8, "2012", [AlexNet: A era \ do _deep learning_], colors.primary),
      (13.3, "2017", [Transformers \ e LLMs], colors.primary),
    )

    // eixo do tempo
    line((0, 0), (14.4, 0), mark: (end: ">"), stroke: 1.4pt + luma(90))

    for (i, m) in marcos.enumerate() {
      let (x, ano, lbl, c) = m
      let h = if calc.even(i) { 1.0 } else { 2.1 }
      line((x, 0.12), (x, h - 0.15), stroke: 0.6pt + luma(160))
      circle((x, 0), radius: 0.16, fill: c, stroke: none)
      content((x, -0.55), text(12pt, weight: "bold", fill: c)[#ano])
      content((x, h + 0.35), box(width: 3.1cm, align(center, text(9.5pt, lbl))))
    }
  }),
  caption: [O primeiro neurônio lógico aos grandes modelos de linguagem — quase 80 anos de avanços, ceticismo e renascimentos.],
)

== Neurônio de McCulloch-Pitts (1943)

#grid(
  columns: (auto, 1fr),
  align: horizon,
  rows: 1fr,
  gutter: 2em,
  [
    #figure(image("assets/mcculloch-pitts.png", width: 14em))
  ],
  [

    - Proposto por Warren McCulloch e Walter Pitts em 1943:
      - Warren McCulloch: Neurofisiologista;
      - Walter Pitts: Matemático ;

    - Foi primeiro modelo matemático de neurônio artificial;

  ],
)

---

== Modelo clássico de McCulloch-Pitts

#align(center)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *
    // neurônio dividido g | f
    circle((0, 0), radius: 1.0, stroke: 1.1pt)
    line((0, -1.0), (0, 1.0), stroke: 1.1pt)
    content((-0.5, 0), text(fill: colors.danger, weight: "bold", size: 16pt)[$g$])
    content((0.5, 0), text(fill: colors.primary, weight: "bold", size: 16pt)[$f$])
    // entradas
    content((-3.2, 1.35), text(size: 13pt)[$x_1$])
    content((-3.2, 0.15), text(size: 13pt)[$x_2$])
    content((-3.2, -0.65), text(size: 13pt)[$dots.v$])
    content((-3.2, -1.5), text(size: 13pt)[$x_n$])
    line((-2.85, 1.3), (-0.82, 0.55), mark: (end: ">"), stroke: 0.8pt)
    line((-2.85, 0.15), (-1.0, 0.07), mark: (end: ">"), stroke: 0.8pt)
    line((-2.85, -1.45), (-0.82, -0.55), mark: (end: ">"), stroke: 0.8pt)
    // saída
    line((1.0, 0), (3.0, 0), mark: (end: ">"), stroke: 0.9pt)
    content((3.3, 0), text(size: 13pt)[$y$])
    // caixa entradas (azul)
    rect((-6.1, -0.7), (-4.0, 0.9), fill: colors.primary, stroke: none)
    content((-5.05, 0.12), box(width: 1.9cm, align(center, text(fill: white, weight: "bold", size: 9pt)[Entradas \ (binárias)])))
    content((-5.05, -1.3), text(size: 12pt)[$x_i in {0, 1}$])
    // caixa saída (verde)
    rect((4.0, -0.6), (6.1, 1.0), fill: colors.safe, stroke: none)
    content((5.05, 0.22), box(width: 1.9cm, align(center, text(fill: white, weight: "bold", size: 9pt)[Saída \ (binária)])))
    content((5.05, -1.2), text(size: 12pt)[$y in {0, 1}$])
  })
]

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  align: horizon + center,
  gutter: 2em,
  text(fill: colors.danger)[$g(x) = x_1 + x_2 + dots.h.c + x_n$],
  inline-box($y = f(g(x))$, color: colors.primary),
)

---

== Função de ativação degrau

#grid(
  columns: (1fr, 1fr),
  align: horizon,
  gutter: 2.5em,
  [
    #align(center)[
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        line((-0.3, 0), (4.3, 0), mark: (end: ">"), stroke: 0.9pt)
        line((0, -0.3), (0, 2.2), mark: (end: ">"), stroke: 0.9pt)
        content((4.55, 0), text(size: 12pt)[$g$])
        content((0, 2.45), text(size: 12pt)[$y$])
        line((0, 0), (2.0, 0), stroke: 1.6pt + colors.primary)
        line((2.0, 1.5), (4.0, 1.5), stroke: 1.6pt + colors.primary)
        line((2.0, 0), (2.0, 1.5), stroke: (dash: "dashed", paint: luma(150)))
        line((-0.12, 1.5), (0.12, 1.5), stroke: 0.9pt)
        content((-0.32, 1.5), text(size: 11pt)[$1$])
        content((2.0, -0.36), text(size: 12pt)[$theta$])
      })
    ]
    #align(center)[#text(size: .85em, fill: luma(90))[Limiar (_threshold_) $theta$]]
  ],
  [
    #fancy-box(title: [Saída do neurônio])[
      $ y = f(g(x)) = cases(1 quad & g(x) >= theta, 0 quad & g(x) < theta) $
      Funciona como uma *chave binária*: dispara quando a soma das entradas atinge o limiar.
    ]
  ],
)

---

#quote-box[
  Funciona como uma chave binária:
  - Ativando-se quando a soma ponderada das entradas ultrapassa um determinado limiar;
  - Capaz de realizar operações lógicas básicas (AND, OR, NOT);
  - Limitado a resolver apenas problemas linearmente separáveis.
]

== McCulloch-Pitts: funções lógicas

Com $g(x) = x_1 + x_2$, basta escolher o *limiar* $theta$:

#grid(
  columns: (1fr, 1fr),
  gutter: 2.5em,
  [
    #align(center)[*E lógico (AND)* — $theta = 2$]
    #align(center)[#table(
      columns: 4, align: center + horizon, inset: (x: .8em, y: .35em),
      table.header([$x_1$], [$x_2$], [$g$], [$y$]),
      [0], [0], [0], [0],
      [1], [0], [1], [0],
      [0], [1], [1], [0],
      [1], [1], [2], [*1*],
    )]
  ],
  [
    #align(center)[*OU lógico (OR)* — $theta = 1$]
    #align(center)[#table(
      columns: 4, align: center + horizon, inset: (x: .8em, y: .35em),
      table.header([$x_1$], [$x_2$], [$g$], [$y$]),
      [0], [0], [0], [0],
      [1], [0], [1], [*1*],
      [0], [1], [1], [*1*],
      [1], [1], [2], [*1*],
    )]
  ],
)

#note-box(color: colors.secondary)[
  *Negação (NOT):* usa uma *entrada inibidora* — quando ativa, força a saída a $0$, independentemente das demais entradas.
]

== Perceptron de Rosenblatt (1958)

#set text(size: .92em)

#grid(
  columns: (1.05fr, 1fr),
  align: horizon,
  gutter: 2em,
  [
    - Proposto por *Frank Rosenblatt* (psicólogo), no _Cornell Aeronautical Laboratory_;
    - Primeiro modelo *treinável*: aprende os pesos a partir de exemplos, pela *regra de aprendizado do perceptron*;
    - Implementado em _hardware_ — o *Mark I Perceptron* — com fotocélulas para reconhecimento de padrões;
    - É um *classificador linear* binário.
  ],
  [
    #fancy-box(title: [Modelo do perceptron])[
      $ y = f(sum_(i=1)^n w_i x_i + b) $
      onde $w_i$ são os *pesos* ajustáveis, $b$ é o *viés* (_bias_) e $f$ é a função degrau.
    ]

    #v(0.4em)

    #note-box(color: colors.secondary)[
      #set text(size: .88em)
      #warning[«NEW NAVY DEVICE LEARNS BY DOING»] \ — _NYT_ (1958): um “embrião” que aprende. O _hype_ foi enorme.
    ]
  ],
)

---

#grid(
  columns: (auto, auto, 1fr),
  align: horizon + center,
  gutter: 1.5em,
  figure(image("assets/cusco/rosenblatt.png", height: 11em), caption: [Frank Rosenblatt e o \ _Mark I Perceptron_]),
  figure(image("assets/cusco/cornell-chronicle.png", height: 11em), caption: [_Cornell Chronicle_]),
  figure(image("assets/cusco/nyt-rosenblatt.png", height: 11em), caption: [Obituário no \ _The New York Times_]),
)

#align(center)[#text(
  size: .85em,
  fill: luma(90),
)[Da euforia da imprensa ao esquecimento: a trajetória do perceptron acompanhou os ciclos de entusiasmo e ceticismo da IA.]]

== Perceptron: soma ponderada e bias

#align(center)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *
    // círculo de soma
    circle((0, 0), radius: 1.2, stroke: 1.1pt)
    content((0.05, 0), text(size: 11pt)[$display(sum_(i=0)^n w_i x_i)$])
    // entradas (x0 bias em vermelho)
    let rows = (
      (2.0, [$x_0 = 1$], [$w_0$], colors.danger),
      (0.9, [$x_1$], [$w_1$], black),
      (-0.2, [$x_2$], [$w_2$], black),
      (-2.0, [$x_n$], [$w_n$], black),
    )
    for (yy, lbl, wl, c) in rows {
      content((-3.7, yy), text(size: 11pt, fill: c)[#lbl])
      line((-3.0, yy * 0.82), (-1.05, yy * 0.42), mark: (end: ">"), stroke: 0.8pt + c)
      content((-1.55, yy * 0.55 + 0.2), text(size: 9pt, fill: c)[#wl])
    }
    content((-3.7, -1.0), text(size: 12pt)[$dots.v$])
    // círculo -> caixa de ativação
    line((1.2, 0), (2.4, 0), mark: (end: ">"), stroke: 0.9pt)
    rect((2.4, -0.7), (3.8, 0.7), stroke: 1pt)
    line((2.6, -0.4), (3.1, -0.4), stroke: 1.3pt + colors.primary)
    line((3.1, -0.4), (3.1, 0.4), stroke: 1.3pt + colors.primary)
    line((3.1, 0.4), (3.6, 0.4), stroke: 1.3pt + colors.primary)
    content((3.1, 1.05), text(size: 9pt, style: "italic")[ativação])
    // saída
    line((3.8, 0), (4.9, 0), mark: (end: ">"), stroke: 0.9pt)
    content((5.1, 0), text(size: 12pt)[$y$])
  })
]

#v(0.4em)

#grid(
  columns: (1.1fr, 1fr),
  align: horizon,
  gutter: 2em,
  [
    Soma *ponderada* (produto escalar entrada–peso):
    $ g(x, w) = arrow(x) dot arrow(w) = sum_(i=0)^n w_i x_i $
    #note-box(color: colors.danger)[
      #set text(size: .9em)
      *Bias (offset):* o termo $w_0 x_0$ (com $x_0 = 1$) desloca o limiar e é *aprendido como um peso*.
    ]
  ],
  fancy-box(title: [Saída])[
    $ y = f(g) = cases(1 quad & g >= theta, 0 quad & g < theta) $
  ],
)

== Perceptron: exemplo numérico

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 3em,
  [
    #align(center)[
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        circle((0, 0), radius: 0.95, stroke: 1.1pt)
        content((0, 0.05), text(size: 11pt)[$theta = 1$])
        let rows = (
          (1.5, [$x_1 = 1$], [$0.5$]),
          (0.0, [$x_2 = 1$], [$1$]),
          (-1.5, [$x_3 = 0$], [$1.2$]),
        )
        for (yy, lbl, wl) in rows {
          content((-3.2, yy), text(size: 11pt)[#lbl])
          line((-2.4, yy * 0.78), (-0.85, yy * 0.42), mark: (end: ">"), stroke: 0.8pt)
          content((-1.45, yy * 0.55 + 0.2), text(size: 9pt, fill: colors.danger)[#wl])
        }
        line((0.95, 0), (2.1, 0), mark: (end: ">"), stroke: 0.9pt)
        content((2.35, 0), text(size: 12pt)[$y$])
      })
    ]
  ],
  [
    $ g = x_1 w_1 + x_2 w_2 + x_3 w_3 $
    $ g = 1(0.5) + 1(1) + 0(1.2) = 1.5 $
    #v(0.3em)
    #fancy-box(color: colors.safe, title: [Resultado])[
      Como $g = 1.5 >= theta = 1$, então #safe[$y = 1$].
    ]
  ],
)

== Perceptron: funções lógicas com bias

Variando o *bias* $w_0$ (com $x_0 = 1$ e $theta = 0$), o mesmo perceptron implementa AND, OR e NOT:

#grid(
  columns: (1fr, 1fr, 0.8fr),
  align: top,
  gutter: 1.5em,
  [
    #align(center)[*AND* — $w_0 = -1.5$]
    #set text(size: .8em)
    #align(center)[#table(
      columns: 4, align: center + horizon, inset: (x: .55em, y: .3em),
      table.header([$x_1$], [$x_2$], [$g$], [$y$]),
      [0], [0], [$-1.5$], [0],
      [1], [0], [$-0.5$], [0],
      [0], [1], [$-0.5$], [0],
      [1], [1], [$+0.5$], [*1*],
    )]
  ],
  [
    #align(center)[*OR* — $w_0 = -0.5$]
    #set text(size: .8em)
    #align(center)[#table(
      columns: 4, align: center + horizon, inset: (x: .55em, y: .3em),
      table.header([$x_1$], [$x_2$], [$g$], [$y$]),
      [0], [0], [$-0.5$], [0],
      [1], [0], [$+0.5$], [*1*],
      [0], [1], [$+0.5$], [*1*],
      [1], [1], [$+1.5$], [*1*],
    )]
  ],
  [
    #align(center)[*NOT* — $w_0 = 0.5, thin w_1 = -1$]
    #set text(size: .8em)
    #align(center)[#table(
      columns: 3, align: center + horizon, inset: (x: .55em, y: .3em),
      table.header([$x_1$], [$g$], [$y$]),
      [0], [$+0.5$], [*1*],
      [1], [$-0.5$], [0],
    )]
  ],
)

#note-box(color: colors.primary)[
  O *bias* funciona como o *limiar* deslocado: ajustá-lo muda a fronteira de decisão do neurônio.
]

== O problema do XOR — Minsky & Papert (1969)

#place(top + right, dy: -0.2em)[
  #figure(image("assets/cusco/minsky.png", width: 6.5em), caption: [Marvin Minsky])
]

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 2.5em,
  [
    #set text(size: .92em)
    *Função XOR (ou-exclusivo)*
    #table(
      columns: (auto, auto, auto),
      align: center + horizon,
      inset: (x: .9em, y: .45em),
      table.header([$x_1$], [$x_2$], [$y$]),
      [0], [0], [0],
      [0], [1], [1],
      [1], [0], [1],
      [1], [1], [0],
    )
  ],
  [
    #align(center)[
      #cetz.canvas(length: 1.15cm, {
        import cetz.draw: *
        // eixos
        line((-0.2, 0), (2.7, 0), mark: (end: ">"), stroke: 1pt)
        line((0, -0.2), (0, 2.7), mark: (end: ">"), stroke: 1pt)
        content((2.85, 0), $x_1$)
        content((0, 2.9), $x_2$)
        // tentativa de reta separadora (impossível)
        line((-0.1, 2.2), (2.2, -0.1), stroke: colors.safe + 1.3pt)
        // classe 0 (saída 0): pontos abertos
        circle((0, 0), radius: 0.13, stroke: colors.primary + 1.6pt, fill: white)
        circle((2, 2), radius: 0.13, stroke: colors.primary + 1.6pt, fill: white)
        // classe 1 (saída 1): pontos cheios vermelhos
        circle((0, 2), radius: 0.13, fill: colors.danger, stroke: none)
        circle((2, 0), radius: 0.13, fill: colors.danger, stroke: none)
        content((-0.32, -0.32), text(9pt)[(0,0)])
        content((-0.32, 2), text(9pt)[(0,1)])
        content((2, -0.32), text(9pt)[(1,0)])
        content((2.05, 2.32), text(9pt)[(1,1)])
      })
    ]
  ],
)

#quote-box(color: colors.danger)[
  No livro *Perceptrons* (1969), Minsky e Papert provaram que um perceptron de *camada única* não resolve problemas *não linearmente separáveis*, como o XOR. \
  #danger[Resultado:] o financiamento secou e iniciou-se o primeiro *“inverno da IA”*.
]

== O “inverno” da IA — os anos de silêncio

#set text(size: .9em)

Apesar do desinteresse geral, alguns pesquisadores mantiveram a chama acesa:

#grid(
  columns: (1fr, 1fr),
  gutter: 1.2em,
  [
    - *Shun-ichi Amari* — teoria do aprendizado e geometria da informação;
    - *Stephen Grossberg* — teoria da ressonância adaptativa (ART);
    - *Teuvo Kohonen* — mapas auto-organizáveis (SOM);
  ],
  [
    - *John Hopfield* (1982) — redes recorrentes e memória associativa;
    - *Kunihiko Fukushima* (1980) — o _Neocognitron_, precursor das redes convolucionais;
    - *Geoffrey Hinton* — preparando o terreno para o renascimento.
  ],
)

#v(0.4em)

#align(center)[
  #grid(
    columns: 6,
    column-gutter: 0.7em,
    align: horizon,
    ..("silencio-1.png", "silencio-2.png", "silencio-3.png", "silencio-4.png", "silencio-5.png", "silencio-6.png").map(
      f => box(image("assets/cusco/" + f, height: 4.6em)),
    ),
  )
]

#align(center)[#text(size: .85em, fill: luma(90))[Pesquisadores que sustentaram o campo durante o “inverno”.]]

== Backpropagation e o livro PDP (1986)

#grid(
  columns: (1.1fr, 1fr),
  align: horizon,
  gutter: 2em,
  [
    - *Rumelhart, Hinton e Williams (1986)* popularizam o algoritmo de *retropropagação* (_backpropagation_);
    - Permite treinar redes com *múltiplas camadas* (camadas ocultas);
    - Com camadas ocultas, o XOR — e problemas não-lineares — passa a ser resolvido;
    - Marco de difusão: a coleção *PDP — Parallel Distributed Processing* (Rumelhart & McClelland).
  ],
  [
    #fancy-box(title: [A virada])[
      A combinação de *camadas ocultas* + *backpropagation* superou a limitação apontada por Minsky & Papert e *renasceu* o interesse pelas redes neurais.
    ]

    #v(0.6em)

    #grid(
      columns: 3,
      column-gutter: 0.6em,
      align: bottom + center,
      ..("pdp-1.png", "pdp-2.png", "pdp-explorations.png").map(f => box(image("assets/cusco/" + f, height: 7em))),
    )
    #align(center)[#text(size: .8em, fill: luma(90))[Coleção _PDP_ (Rumelhart & McClelland, 1986)]]
  ],
)

== A era do _deep learning_

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    - *2012 — AlexNet* (Krizhevsky, Sutskever e Hinton) vence o ImageNet, impulsionada por *GPUs* e *grandes volumes de dados*;
    - *2017 — Transformers* (“_Attention is all you need_”) abrem caminho para *GPT*, modelos de difusão e IA generativa;
    - *2018* — Bengio, Hinton e LeCun recebem o *Prêmio Turing*.
  ],
  [
    #quote-box(color: colors.safe)[
      “A perseverança de um pequeno grupo de cientistas, trabalhando por mais de vinte e cinco anos numa área aparentemente sem perspectivas, revolucionou um campo e impactou profundamente a sociedade.”
      #align(right)[#text(size: .85em)[— Simon J. D. Prince, _Understanding Deep Learning_]]
    ]
  ],
)

= Aplicações de redes neurais

== Em diferentes áreas

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    - *Visão computacional* — classificação, detecção e segmentação de imagens;
    - *Processamento de linguagem* — tradução, chatbots, LLMs;
    - *Saúde* — diagnóstico por imagem, descoberta de fármacos;
  ],
  [
    - *Engenharia e controle* — modelagem, predição e otimização de processos;
    - *Finanças* — previsão de séries temporais, detecção de fraude;
    - *Ciência* — previsão de estruturas de proteínas, simulações.
  ],
)

#note-box(color: colors.safe)[
  Em comum: problemas com *muitos dados* e *relações não-lineares* difíceis de modelar à mão.
]

== Um caso real: indústria do petróleo

#grid(
  columns: (1fr, 1fr, 1fr),
  align: horizon + center,
  gutter: 1.2em,
  figure(image("assets/cusco/petroleo-sismica.png", height: 9em), caption: [Interpretação \ de dados sísmicos]),
  figure(image("assets/cusco/petroleo-coluna.png", height: 9em), caption: [Controle da coluna \ de fracionamento]),
  figure(image("assets/cusco/app-viajes.png", height: 9em), caption: [Previsão de \ demanda/vendas]),
)

#align(center)[#text(
  size: .85em,
  fill: luma(90),
)[Exemplos de uso industrial de redes neurais (Ropero Peláez): previsão, interpretação de sinais e controle de processos.]]

= Inspiração biológica e aprendizado

== O cérebro como inspiração

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 2em,
  figure(image("assets/cusco/cajal-quote.png", height: 13em), caption: [Santiago Ramón y Cajal]),
  [
    - *Santiago Ramón y Cajal* (1852–1934), Nobel de 1906: a *doutrina do neurônio* — o cérebro é formado por células individuais (neurônios) conectadas por *sinapses*;
    - Já em *1894* propôs que o aprendizado *modifica a força das sinapses*, e que essas mudanças são a base da *memória*;
    - É a inspiração biológica direta do neurônio artificial.
  ],
)

#quote-box[
  “Todo homem pode ser, se assim o desejar, *escultor de seu próprio cérebro*.” — a ideia de *plasticidade*: o cérebro se molda com a experiência.
]

== Plasticidade sináptica: uma breve cronologia

#grid(
  columns: (1.25fr, auto),
  align: horizon,
  gutter: 2em,
  [
    / 1894 — Ramón y Cajal: o aprendizado altera a *eficiência sináptica*; essas mudanças seriam o mecanismo da memória.
    / 1948 — Konorski: discute *mudanças plásticas persistentes* na memória.
    / 1949 — Hebb: as conexões sinápticas são *reforçadas* pela atividade *correlacionada* de neurônios pré e pós-sinápticos.
    / 1973 — Bliss & Lømo: identificam processos “Hebbianos” (*LTP*) no hipocampo — evidência fisiológica.
  ],
  figure(image("assets/cusco/csic-cajal.png", width: 13em), caption: [Instituto Cajal (CSIC)]),
)

== A regra de Hebb

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 2em,
  figure(image("assets/cusco/hebb.png", width: 11em), caption: [Donald O. Hebb]),
  [
    #quote-box[
      “Quando um axônio de uma célula A está perto o suficiente de uma célula B para excitá-la, e participa repetida e persistentemente em seu disparo, ocorre algum processo de crescimento ou mudança metabólica de modo que a *eficiência de A ao disparar B aumenta*.”
    ]

    #fancy-box(title: [Princípio de Hebb])[
      _“Neurônios que disparam juntos, conectam-se juntos.”_
      $ Delta w_(i j) = epsilon thin O_i thin I_j $
      onde $epsilon$ é o *fator de aprendizado*.
    ]
  ],
)

== Modelos artificiais de plasticidade sináptica

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 2em,
  [
    #align(center)[
      #cetz.canvas(length: 1cm, {
        import cetz.draw: *
        // terminal pré-sináptico (esquerda)
        merge-path(fill: luma(235), stroke: 1pt, {
          line((-2.2, 1), (-0.6, 1))
          bezier((-0.6, 1), (-0.3, 0), (-0.2, 0.7), (-0.45, 0.25))
          bezier((-0.3, 0), (-0.6, -1), (-0.45, -0.25), (-0.2, -0.7))
          line((-0.6, -1), (-2.2, -1))
        })
        content((-1.4, 0), text(11pt)[$I_j$])
        // membrana pós-sináptica (direita)
        merge-path(fill: luma(235), stroke: 1pt, {
          line((2.2, 1), (0.6, 1))
          bezier((0.6, 1), (0.3, 0), (0.2, 0.7), (0.45, 0.25))
          bezier((0.3, 0), (0.6, -1), (0.45, -0.25), (0.2, -0.7))
          line((0.6, -1), (2.2, -1))
        })
        content((1.4, 0), text(11pt)[$O_i$])
        // fenda sináptica + peso w
        for yy in (-0.45, -0.15, 0.15, 0.45) {
          line((-0.12, yy), (0.12, yy), stroke: 1.4pt + colors.primary)
        }
        content((0, 1.35), text(11pt, weight: "bold")[$w$])
      })
    ]
  ],
  [
    *1. Modelo de Hebb*
    $ Delta w_(i j) = epsilon thin O_i thin I_j, quad epsilon = "0,1" $

    #table(
      columns: 4,
      align: center + horizon,
      inset: (x: 1em, y: .4em),
      table.header([$w_(i j)$], [$I_j$], [$O_i$], [$Delta w_(i j)$]),
      [0], [1], [1], [0,1],
      [0,1], [1], [0,5], [0,05],
      [0,15], [0,1], [0,5], [0,005],
      [0,155], [1], [1], [0,1],
      [*0,255*], [...], [...], [...],
    )
    #text(size: .82em, fill: luma(90))[O peso $w_(i j)$ cresce quando entrada e saída disparam juntas.]
  ],
)

== Outros modelos Hebbianos

#set text(size: .95em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  fancy-box(title: [2. Regra pós-sináptica])[
    $ Delta w_(i j) = epsilon thin O_i (I_j - w_(i j)) $
    Equivale à probabilidade condicional $w_(i j) = P(I_j | O_i)$.
  ],
  fancy-box(title: [3. Regra pré-sináptica])[
    $ Delta w_(i j) = epsilon thin I_j (O_i - w_(i j)) $
    Equivale a $w_(i j) = P(O_i | I_j)$.
  ],
)

#v(0.6em)

#fancy-box(color: colors.safe, title: [4. Regra de Oja])[
  $ Delta w_(i j) = epsilon (I_j thin O_i - O_i^2 thin w_(i j)) $
  Estabiliza o crescimento dos pesos (normalização) e extrai a *componente principal* dos dados.
]


= Arquiteturas de redes neurais

== Redes de camada única

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 2.5em,
  [
    #fletcher.diagram(
      spacing: (24mm, 11mm),
      node-stroke: 0.9pt,
      node-fill: white,
      node((0, 0), $x_1$, shape: fletcher.shapes.circle, radius: 1.1em, name: <x1>),
      node((0, 1), $x_i$, shape: fletcher.shapes.circle, radius: 1.1em, name: <xi>),
      node((0, 2), $x_n$, shape: fletcher.shapes.circle, radius: 1.1em, name: <xn>),
      node((2, 0.25), $y_1$, shape: fletcher.shapes.circle, radius: 1.1em, name: <y1>),
      node((2, 1), $y_j$, shape: fletcher.shapes.circle, radius: 1.1em, name: <yj>),
      node((2, 1.75), $y_m$, shape: fletcher.shapes.circle, radius: 1.1em, name: <ym>),
      edge(<x1>, <y1>, "->"), edge(<x1>, <yj>, "->"), edge(<x1>, <ym>, "->"),
      edge(<xi>, <y1>, "->"), edge(<xi>, <yj>, "->"), edge(<xi>, <ym>, "->"),
      edge(<xn>, <y1>, "->"), edge(<xn>, <yj>, "->"), edge(<xn>, <ym>, "->"),
    )
  ],
  [
    - Vetor de *entradas* $arrow(x)$, de comprimento $n$;
    - Vetor de *saídas* $arrow(y)$, de comprimento $m$;
    - Uma única *matriz de pesos* $W_(n times m)$.
    #v(0.3em)
    $ arrow(y) = f(W^top arrow(x)) $
  ],
)

== Redes multicamadas

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 2em,
  [
    #fletcher.diagram(
      spacing: (16mm, 10mm),
      node-stroke: 0.9pt,
      node-fill: white,
      node((0, 0), $x_1$, shape: fletcher.shapes.circle, radius: 1.0em, name: <x1>),
      node((0, 1), $x_i$, shape: fletcher.shapes.circle, radius: 1.0em, name: <xi>),
      node((0, 2), $x_n$, shape: fletcher.shapes.circle, radius: 1.0em, name: <xn>),
      node((1, 0.2), $z_1$, shape: fletcher.shapes.circle, radius: 1.0em, fill: colors.secondary.lighten(55%), name: <z1>),
      node((1, 1), $z_j$, shape: fletcher.shapes.circle, radius: 1.0em, fill: colors.secondary.lighten(55%), name: <zj>),
      node((1, 1.8), $z_p$, shape: fletcher.shapes.circle, radius: 1.0em, fill: colors.secondary.lighten(55%), name: <zp>),
      node((2, 0.35), $y_1$, shape: fletcher.shapes.circle, radius: 1.0em, name: <y1>),
      node((2, 1.45), $y_m$, shape: fletcher.shapes.circle, radius: 1.0em, name: <ym>),
      edge(<x1>, <z1>, "->"), edge(<x1>, <zj>, "->"), edge(<x1>, <zp>, "->"),
      edge(<xi>, <z1>, "->"), edge(<xi>, <zj>, "->"), edge(<xi>, <zp>, "->"),
      edge(<xn>, <z1>, "->"), edge(<xn>, <zj>, "->"), edge(<xn>, <zp>, "->"),
      edge(<z1>, <y1>, "->"), edge(<z1>, <ym>, "->"),
      edge(<zj>, <y1>, "->"), edge(<zj>, <ym>, "->"),
      edge(<zp>, <y1>, "->"), edge(<zp>, <ym>, "->"),
    )
  ],
  [
    - Entradas $arrow(x)$ e saídas $arrow(y)$;
    - *Camada oculta* $arrow(z)$ com $p$ neurônios;
    - Duas matrizes de pesos: $V_(n times p)$ e $W_(p times m)$.
    #note-box(color: colors.secondary)[
      #set text(size: .9em)
      A camada oculta permite aprender funções *não linearmente separáveis*.
    ]
  ],
)

== Resolvendo o XOR com uma rede multicamada

#grid(
  columns: (auto, 1fr),
  align: horizon,
  gutter: 2.5em,
  [
    #set text(size: .92em)
    *XOR (ou-exclusivo)*
    #table(
      columns: 3, align: center + horizon, inset: (x: .8em, y: .35em),
      table.header([$x_1$], [$x_2$], [$y$]),
      [0], [0], [0],
      [0], [1], [*1*],
      [1], [0], [*1*],
      [1], [1], [0],
    )
  ],
  [
    #align(center)[
      #fletcher.diagram(
        spacing: (20mm, 11mm),
        node-stroke: 0.9pt,
        node-fill: white,
        node((0, 0), $x_1$, shape: fletcher.shapes.circle, radius: 1.0em, name: <x1>),
        node((0, 1.4), $x_2$, shape: fletcher.shapes.circle, radius: 1.0em, name: <x2>),
        node((1.2, 0.2), $z_1$, shape: fletcher.shapes.circle, radius: 1.0em, fill: colors.secondary.lighten(55%), name: <z1>),
        node((1.2, 1.2), $z_2$, shape: fletcher.shapes.circle, radius: 1.0em, fill: colors.secondary.lighten(55%), name: <z2>),
        node((2.5, 0.7), $Y$, shape: fletcher.shapes.circle, radius: 1.0em, fill: colors.primary.lighten(70%), name: <Y>),
        edge(<x1>, <z1>, $2$, "->"),
        edge(<x1>, <z2>, $-1$, "->", label-side: right),
        edge(<x2>, <z1>, $-1$, "->"),
        edge(<x2>, <z2>, $2$, "->", label-side: right),
        edge(<z1>, <Y>, $2$, "->"),
        edge(<z2>, <Y>, $2$, "->", label-side: right),
        edge(<Y>, (3.5, 0.7), $y$, "->"),
      )
    ]
    #align(center)[#text(size: .85em, fill: luma(90))[Limiares $theta_(z_1) = theta_(z_2) = theta_Y = 2$.]]
  ],
)

= Treinamento e representação

== Representação binária e bipolar

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  fancy-box(title: [Binária ($0$ e $1$)])[
    - Usada nos *primeiros modelos*;
    - Em geral, *não recomendada* — entradas nulas não contribuem para o ajuste dos pesos.
  ],
  fancy-box(color: colors.safe, title: [Bipolar ($-1$ e $+1$)])[
    - Maior capacidade de *generalização*;
    - Resulta em *redes mais simples* em vários casos.
  ],
)

== Regra estendida de Hebb

#grid(
  columns: (1fr, 1.1fr),
  align: horizon,
  gutter: 2em,
  [
    *Conjunto de treinamento:* padrões de entrada e saída desejada.
    #v(0.3em)
    Símbolos:
    - $arrow(s)$ — vetor de entradas de uma amostra;
    - $t$ — saída desejada (_target_);
    - $arrow(w)$ — vetor de pesos.
  ],
  fancy-box(title: [Algoritmo de treinamento])[
    *Passo 1.* Inicializar: $w_i <- 0$, $b <- 0$.

    *Passo 2.* Para cada amostra $(arrow(s), t)$:
    $ w_i <- w_i + s_i dot t $
    $ b <- b + t $
  ],
)

#note-box(color: colors.primary)[
  É a versão *supervisionada* do princípio de Hebb: reforça os pesos na direção da saída desejada.
]

== Exercício proposto

#fancy-box(title: [Rede de camada única + regra de Hebb])[
  + Implemente uma rede neural de *camada única* com *3 entradas*, *1 neurônio* de saída e *representação bipolar*;
  + Para cada expressão lógica abaixo, *treine* a rede com a *regra estendida de Hebb* e forneça uma tabela com os resultados *esperados* e *obtidos* para os $8$ padrões de entrada:
    $ Y_1 = A B C wide Y_2 = A + B + C wide Y_3 = overline(A B) + C $
  + *Comente* sobre os resultados obtidos.
]
