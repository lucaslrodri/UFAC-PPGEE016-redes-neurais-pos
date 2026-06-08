#import "@local/ufac-syllabus:0.0.1": *


#show: ufac-syllabus.with(
  instructor: "Lucas L. Rodrigues / Omar A. C. Vilcanqui",
  semester: (2026, 1),
  subject: "Redes Neurais",
  subject-code: "PPGEE016",
  subject-class-duration: 60,
  subject-classes-per-meeting: 2,
  prerequisites: (),
  credits: ("4", "0", "0"),
  subject-datetime: "16h00 – 18h00 (Segundas e Sextas)",
  syllabus: [
    Introdução e Motivação. Base Biológica: Aspectos Funcionais e Organizacionais. Fundamentos Básicos de Álgebra Linear e Otimização. Redes Neurais Não-Recorrentes. Redes Neurais Recorrentes. Mapas Auto-Organizáveis e Aprendizado Não-Supervisionado. Regularização e outras máquinas de aprendizado. Deep Learning: Otimização não-linear e funções-custo, Redes Convolucionais, Dropout, Bloco Long Short Term Memory (LSTM), Aprendizado da Representação, Manifolds, Autoencoders, Restricted Boltzmann Machines, Processamento de Linguagem Natural, Modelos de Atenção, Redes Adversárias Generativas, Interpretação da Rede Neural Treinada, Aprendizado por Reforço.
  ],
  main-objective: [
    Introduzir os conceitos fundamentais de redes neurais com ênfase em aspectos teóricos e práticos, capacitando-os a aplicar esses conhecimentos em diversos problemas da engenharia e ciência.
  ],
  specific-objectives: (
    [Introduzir os conceitos fundamentais de redes neurais;],
    [Introduzir os conceitos matemáticos necessários para o entendimento de redes neurais;],
    [Analisar e implementar diferentes arquiteturas de redes neurais;],
    [Apresentar estratégias de otimização e treinamento de redes neurais;],
    [Apresentar principais métricas de avaliação de desempenho de redes neurais;],
    [Habilitar os estudantes no desenvolvimento de redes neurais em aplicações práticas.]
  ),
  program-content: (
    (
      title: "Introdução de redes neurais",
      meetings: 2,
      topics: [
        - História das redes neurais;
        - Relação entre redes neurais e o cérebro biológico;
        - Aplicações de redes neurais em diferentes áreas;
        - Visão geral dos tipos de redes neurais e suas arquiteturas;
        - Tipos de aprendizado: supervisionado, não-supervisionado e por reforço.
      ],
    ),
    (
      title: "Redes neurais perceptron e perceptron multicamada",
      meetings: 3,
      topics: [
        - Rede Perceptron;
        - Perceptron Multicamadas (MLP);
        - Função de ativação;
        - Algoritmo de aprendizado do perceptron;
        - Backpropagation.
      ],
    ),
    (
      title: "Avalição de desempenho de redes neurais",
      meetings: 2,
      topics: [
        - Métricas de avaliação: acurácia, precisão, revocação, F1-score;
        - Curva ROC;
        - Curva precisão-revocação;
        - K-fold cross-validation (Validação cruzada);
        - Matriz de confusão;
        - Interpretação de resultados e análise de erros.
      ],
    ),
    (
      title: "Aprendizado supervisionado",
      meetings: 6,
      topics: [
        - Função de perda (Loss);
        - Treinamento (Fitting): Gradiente Descendente, Gradiente Descendente Estocástico, Adam e outros otimizadores;
        - Ruído, viés e variância (Noise, bias and variance);
        - Aprendizado em lotes;
        - Overfitting e underfitting;
        - Técnicas de normalização (Batch Normalization e Layer Normalization);
        - Vanish e Exploding Gradients;
        - Regularização (Dropout, L1 e L2).
      ],
    ),
    (
      title: "Redes convolucionais",
      meetings: 4,
      topics: [
        - Invariância e equivariância;
        - Convoluções e Redes Neurais Convolucionais (CNNs);
        - Algoritmos CAM;
        - Redes Geradoras Adversárias (GANs);
        - Redes Deep Convolutional Generative Adversarial Networks (DCGANs);
        - GANs condicionais (cGANs).
      ],
    ),
    (
      title: "Outras arquiteturas",
      meetings: 4,
      topics: [
        - Redes recorrentes (RNNs);
        - Long Short-Term Memory (LSTM);
        - Redes Transformer;
        - Aplicações de outras arquiteturas de redes neurais.
      ],
    ),
    (
      title: "$T_1$ - Seminário sobre outras arquiteturas",
      meetings: 1,
      isTopic: false,
    ),
    (
      title: "$T_2$ - Artigo (Apresentação + Artigo)",
      meetings: 1,
      isTopic: false,
    )
  ),
  assignments: [
    As avaliações das disciplinas serão compostas por:
    - $E$ - Exercícios práticos de implementação;
    - $T_1$ - Seminário sobre outras arquiteturas;
    - $T_2$ - Artigo (Apresentação + Artigo).

    Por fim a média final, $N_f$, será dada por:
    $
      N_f = ("0,3" dot E + "0,3" dot T_1 + "0,4" dot T_2)
    $

    O conceito final da disciplina será atribuído de acordo com a relação abaixo:
    - Conceito A: Nota entre 10 e 8,01);
    - Conceito B: Nota entre 8 e 6,51);
    - Conceito C: Nota entre 6,5 e 5,01);
    - Conceito D: Nota menor que 5.).

    ],
  main-bibliography: [
    + PRINCE, Simon J. D. *Understanding Deep Learning*. Cambridge: MIT Press, 2023.
    #v(2em)
  ],
  complementary-bibliography: [
    + BROWNLEE, Jason. Basics of Linear Algebra for Machine Learning: Discover the Mathematical Language of Data in Python. [S. l.]: Machine Learning Mastery, 2018.
    + MICHELUCCI, Umberto. Applied Deep Learning: A Case-Based Approach to Understanding Deep Neural Networks. Berkeley: Apress, 2018.
    + ZINOVIEV, Dmitry. Data Science Essentials in Python: Collect - Organize - Explore - Predict - Value. Raleigh: Pragmatic Bookshelf, 2016.
    + RUSSELL, Stuart J.; NORVIG, Peter. Inteligência artificial: uma abordagem moderna. 4. ed. Rio de Janeiro: LTC, 2022.
  ],
)

