import '../model/option.dart';
import '../model/question.dart';

//Physics Questions//
final List<Question> physicsQuestions = [
  Question(
    text: 'What is the speed of light in a vacuum?',
    options: [
      Option(code: 'A', text: '300,000 km/s', isCorrect: false),
      Option(code: 'B', text: '299,792 km/s', isCorrect: true), // Correct option
      Option(code: 'C', text: '250,000 km/s', isCorrect: false),
      Option(code: 'D', text: '350,000 km/s', isCorrect: false),
    ],
    solution: 'The speed of light in a vacuum is approximately 299,792 km/s.',
    answer: '299,792 km/s',
  ),
  Question(
    text: 'What is the SI unit of force?',
    options: [
      Option(code: 'A', text: 'Joule', isCorrect: false),
      Option(code: 'B', text: 'Watt', isCorrect: false),
      Option(code: 'C', text: 'Newton', isCorrect: true), // Correct option
      Option(code: 'D', text: 'Pascal', isCorrect: false),
    ],
    solution: 'The SI unit of force is the Newton (N).', answer: 'Newton',
  ),
  Question(
    text: 'Which of these is a fundamental particle in the nucleus of an atom?',
    options: [
      Option(code: 'A', text: 'Proton', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Electron', isCorrect: false),
      Option(code: 'C', text: 'Neutron', isCorrect: true), // Correct option
      Option(code: 'D', text: 'Photon', isCorrect: false),
    ],
    solution: 'Protons are fundamental particles in the nucleus of an atom.', answer: 'Proton',
  ),
  Question(
    text: 'What property of an object is responsible for its resistance to change in motion?',
    options: [
      Option(code: 'A', text: 'Acceleration', isCorrect: false),
      Option(code: 'B', text: 'Inertia', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Momentum', isCorrect: false),
      Option(code: 'D', text: ' Velocity', isCorrect: false),
    ],
    solution: 'Inertia is responsible for its resistance to change in motion', answer: 'Inertia',
  ),
  Question(
    text: 'What is the SI unit of electric current?',
    options: [
      Option(code: 'A', text: 'Volt', isCorrect: false),
      Option(code: 'B', text: 'Ampere', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Ohm', isCorrect: false),
      Option(code: 'D', text: 'Watt', isCorrect: false),
    ],
    solution: 'The SI unit of electric current is the Ampere (A).', answer: 'Ampere',
  ),
  Question(
    text: 'What is the formula for calculating force?',
    options: [
      Option(code: 'A', text: 'F = ma', isCorrect: true),
      Option(code: 'B', text: 'E = mc²', isCorrect: false),
      Option(code: 'C', text: 'V = IR', isCorrect: false),
      Option(code: 'D', text: 'PV = nRT', isCorrect: false),
    ],
    solution: 'The formula for calculating force is F = ma.', answer: 'F = ma',
  ),

  Question(
    text: 'What is the SI unit of electric charge?',
    options: [
      Option(code: 'A', text: 'Coulomb', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Ampere-hour', isCorrect: false),
      Option(code: 'C', text: 'Volt', isCorrect: false),
      Option(code: 'D', text: 'Ohm', isCorrect: false),
    ],
    solution: 'The SI unit of electric charge is the Coulomb (C).', answer: 'Coulomb',
  ),
  Question(
    text: 'Which of these is a measure of the average kinetic energy of the particles in a substance?',
    options: [
      Option(code: 'A', text: 'Temperature', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Pressure', isCorrect: false),
      Option(code: 'C', text: 'Volume', isCorrect: false),
      Option(code: 'D', text: 'Density', isCorrect: false),
    ],
    solution: 'Temperature is a measure of the average kinetic energy of the particles in a substance.', answer: 'Temperature',
  ),
  Question(
    text: 'What is the SI unit of power?',
    options: [
      Option(code: 'A', text: 'Joule', isCorrect: false),
      Option(code: 'B', text: 'Watt', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Ampere', isCorrect: false),
      Option(code: 'D', text: 'Volt', isCorrect: false),
    ],
    solution: 'The SI unit of power is the Watt (W).', answer: 'Watt',
  ),
  Question(
    text: 'What force keeps an object in circular motion?',
    options: [
      Option(code: 'A', text: 'Gravity', isCorrect: false),
      Option(code: 'B', text: 'Friction', isCorrect: false), // Correct option
      Option(code: 'C', text: 'Centripetal Force', isCorrect: true),
      Option(code: 'D', text: 'Tension', isCorrect: false),
    ],
    solution: 'Centripetal Force keeps an object in circular motion', answer: 'Centripetal Force',
  ),
];

//Chemistry Questions//

final List<Question> chemistryQuestions = [
  Question(
    text: 'What is the atomic number of carbon?',
    options: [
      Option(code: 'A', text: '5', isCorrect: false),
      Option(code: 'B', text: '6', isCorrect: true), // Correct option
      Option(code: 'C', text: '7', isCorrect: false),
      Option(code: 'D', text: '8', isCorrect: false),
    ],
    solution: 'The atomic number of carbon is 6.', answer: '6',
  ),
  Question(
    text: 'Which gas is commonly known as laughing gas?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: false),
      Option(code: 'B', text: 'Carbon dioxide', isCorrect: false),
      Option(code: 'C', text: 'Nitrous oxide', isCorrect: true), // Correct option
      Option(code: 'D', text: 'Hydrogen', isCorrect: false),
    ],
    solution: 'Laughing gas is also known as nitrous oxide.', answer: 'Nitrous oxide',
  ),
  Question(
    text: 'What is the chemical symbol for gold?',
    options: [
      Option(code: 'A', text: 'Au', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Ag', isCorrect: false),
      Option(code: 'C', text: 'Fe', isCorrect: false),
      Option(code: 'D', text: 'Cu', isCorrect: false),
    ],
    solution: 'The chemical symbol for gold is Au.', answer: 'Au',
  ),
  Question(
    text: 'Which element is the most abundant in Earth\'s crust?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: false),
      Option(code: 'B', text: 'Silicon', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Aluminum', isCorrect: false),
      Option(code: 'D', text: 'Iron', isCorrect: false),
    ],
    solution: 'Silicon is the most abundant element in Earth\'s crust.', answer: 'Silicon',
  ),
  Question(
    text: 'What is the chemical formula for water?',
    options: [
      Option(code: 'A', text: 'H2O2', isCorrect: false),
      Option(code: 'B', text: 'CO2', isCorrect: false),
      Option(code: 'C', text: 'H2O', isCorrect: true), // Correct option
      Option(code: 'D', text: 'CH4', isCorrect: false),
    ],
    solution: 'The chemical formula for water is H2O.', answer: 'H2O',
  ),
  Question(
    text: 'Which gas is produced during photosynthesis?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Carbon dioxide', isCorrect: false),
      Option(code: 'C', text: 'Hydrogen', isCorrect: false),
      Option(code: 'D', text: 'Nitrogen', isCorrect: false),
    ],
    solution: 'Oxygen is produced during photosynthesis.', answer: 'Oxygen',
  ),
  Question(
    text: 'What is the chemical symbol for carbon dioxide?',
    options: [
      Option(code: 'A', text: 'CO', isCorrect: false),
      Option(code: 'B', text: 'CO2', isCorrect: true), // Correct option
      Option(code: 'C', text: 'O2', isCorrect: false),
      Option(code: 'D', text: 'CH4', isCorrect: false),
    ],
    solution: 'The chemical symbol for carbon dioxide is CO2.', answer: 'CO2',
  ),
  Question(
    text: 'Which element is the primary component of natural gas?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: false),
      Option(code: 'B', text: 'Carbon', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Hydrogen', isCorrect: false),
      Option(code: 'D', text: 'Nitrogen', isCorrect: false),
    ],
    solution: 'Carbon is the primary component of natural gas.', answer: 'Carbon',
  ),
  Question(
    text: 'What is the chemical formula for methane?',
    options: [
      Option(code: 'A', text: 'CH4', isCorrect: true), // Correct option
      Option(code: 'B', text: 'CO2', isCorrect: false),
      Option(code: 'C', text: 'H2O', isCorrect: false),
      Option(code: 'D', text: 'NH3', isCorrect: false),
    ],
    solution: 'The chemical formula for methane is CH4.', answer: 'CH4',
  ),
  Question(
    text: 'Which gas is responsible for the greenhouse effect?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: false),
      Option(code: 'B', text: 'Carbon dioxide', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Nitrogen', isCorrect: false),
      Option(code: 'D', text: 'Methane', isCorrect: false),
    ],
    solution: 'Carbon dioxide is responsible for the greenhouse effect.', answer: 'Carbon dioxide',
  ),
];

//Maths Questions//
final List<Question> mathQuestions = [
  Question(
    text: 'What is the result of 2 + 2?',
    options: [
      Option(code: 'A', text: '3', isCorrect: false),
      Option(code: 'B', text: '4', isCorrect: true), // Correct option
      Option(code: 'C', text: '5', isCorrect: false),
      Option(code: 'D', text: '6', isCorrect: false),
    ],
    solution: '2 + 2 = 4.', answer: '4',
  ),
  Question(
    text: 'If x = 5 and y = 3, what is the value of x + y?',
    options: [
      Option(code: 'A', text: '6', isCorrect: false),
      Option(code: 'B', text: '7', isCorrect: false), // Correct option
      Option(code: 'C', text: '8', isCorrect: true),
      Option(code: 'D', text: '9', isCorrect: false),
    ],
    solution: 'x + y = 5 + 3 = 8.', answer: '8',
  ),
  Question(
    text: 'What is 7 multiplied by 9?',
    options: [
      Option(code: 'A', text: '56', isCorrect: false),
      Option(code: 'B', text: '63', isCorrect: true), // Correct option
      Option(code: 'C', text: '72', isCorrect: false),
      Option(code: 'D', text: '81', isCorrect: false),
    ],
    solution: '7 * 9 = 63.', answer: '63',
  ),
  Question(
    text: 'If a rectangle has a length of 8 units and a width of 5 units, what is its area?',
    options: [
      Option(code: 'A', text: '13 square units', isCorrect: false),
      Option(code: 'B', text: '30 square units', isCorrect: false), // Correct option
      Option(code: 'C', text: '40 square units', isCorrect: true),
      Option(code: 'D', text: '20 square units', isCorrect: false),
    ],
    solution: 'Area = length * width = 8 * 5 = 40 square units.', answer: '40 square units',
  ),
  Question(
    text: 'What is the square root of 25?',
    options: [
      Option(code: 'A', text: '4', isCorrect: false),
      Option(code: 'B', text: '5', isCorrect: true), // Correct option
      Option(code: 'C', text: '6', isCorrect: false),
      Option(code: 'D', text: '7', isCorrect: false),
    ],
    solution: 'The square root of 25 is 5.', answer: '5',
  ),
  Question(
    text: 'If a car travels at a speed of 60 miles per hour, how far will it travel in 3 hours?',
    options: [
      Option(code: 'A', text: '120 miles', isCorrect: false),
      Option(code: 'B', text: '180 miles', isCorrect: true), // Correct option
      Option(code: 'C', text: '240 miles', isCorrect: false),
      Option(code: 'D', text: '300 miles', isCorrect: false),
    ],
    solution: 'Distance = speed * time = 60 mph * 3 hours = 180 miles.', answer: '180 miles',
  ),
  Question(
    text: 'What is the result of 8 divided by 2?',
    options: [
      Option(code: 'A', text: '2', isCorrect: false),
      Option(code: 'B', text: '4', isCorrect: true), // Correct option
      Option(code: 'C', text: '6', isCorrect: false),
      Option(code: 'D', text: '8', isCorrect: false),
    ],
    solution: '8 ÷ 2 = 4.', answer: '4',
  ),
  Question(
    text: 'If a box contains 24 candies and 6 candies are taken out, how many candies are left?',
    options: [
      Option(code: 'A', text: '12', isCorrect: false),
      Option(code: 'B', text: '18', isCorrect: true),
      Option(code: 'C', text: '6', isCorrect: false),
      Option(code: 'D', text: '8', isCorrect: false), // Correct option
    ],
    solution: 'Remaining candies = 24 - 6 = 18.', answer: '18',
  ),
  Question(
    text: 'What is the value of 3 squared?',
    options: [
      Option(code: 'A', text: '6', isCorrect: false),
      Option(code: 'B', text: '9', isCorrect: true), // Correct option
      Option(code: 'C', text: '12', isCorrect: false),
      Option(code: 'D', text: '16', isCorrect: false),
    ],
    solution: '3 squared (3^2) = 9.', answer: '9',
  ),
  Question(
    text: 'If a book costs 20 and you have 30, how much change will you receive?',
    options: [
      Option(code: 'A', text: '5', isCorrect: false),
      Option(code: 'B', text: '10', isCorrect: true), // Correct option
      Option(code: 'C', text: '15', isCorrect: false),
      Option(code: 'D', text: '20', isCorrect: false),
    ],
    solution: 'Change = Amount received - Cost = 30 - 20 = 10.', answer: '10',
  ),
];

//Biology Questions//
final List<Question> biologyQuestions = [
  Question(
    text: 'What is the powerhouse of the cell?',
    options: [
      Option(code: 'A', text: 'Nucleus', isCorrect: false),
      Option(code: 'B', text: 'Mitochondria', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Ribosome', isCorrect: false),
      Option(code: 'D', text: 'Endoplasmic reticulum', isCorrect: false),
    ],
    solution: 'Mitochondria is known as the powerhouse of the cell.', answer: 'Mitochondria',
  ),
  Question(
    text: 'Which gas do plants absorb from the atmosphere during photosynthesis?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: false),
      Option(code: 'B', text: 'Carbon dioxide', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Nitrogen', isCorrect: false),
      Option(code: 'D', text: 'Hydrogen', isCorrect: false),
    ],
    solution: 'Plants absorb carbon dioxide from the atmosphere during photosynthesis.', answer: 'Carbon dioxide',
  ),
  Question(
    text: 'What is the largest organ in the human body?',
    options: [
      Option(code: 'A', text: 'Liver', isCorrect: false),
      Option(code: 'B', text: 'Heart', isCorrect: false),
      Option(code: 'C', text: 'Skin', isCorrect: true), // Correct option
      Option(code: 'D', text: 'Brain', isCorrect: false),
    ],
    solution: 'The skin is the largest organ in the human body.', answer: 'Skin',
  ),
  Question(
    text: 'Which gas do humans exhale when they breathe out?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: false),
      Option(code: 'B', text: 'Carbon dioxide', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Nitrogen', isCorrect: false),
      Option(code: 'D', text: 'Hydrogen', isCorrect: false),
    ],
    solution: 'Humans exhale carbon dioxide when they breathe out.', answer: 'Carbon dioxide',
  ),
  Question(
    text: 'What is the primary function of the red blood cells in the human body?',
    options: [
      Option(code: 'A', text: 'Transporting oxygen', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Digesting food', isCorrect: false),
      Option(code: 'C', text: 'Producing insulin', isCorrect: false),
      Option(code: 'D', text: 'Filtering waste', isCorrect: false),
    ],
    solution: 'The primary function of red blood cells is to transport oxygen in the human body.', answer: 'Transporting oxygen',
  ),
  Question(
    text: 'Which part of the plant is responsible for photosynthesis?',
    options: [
      Option(code: 'A', text: 'Roots', isCorrect: false),
      Option(code: 'B', text: 'Stem', isCorrect: false),
      Option(code: 'C', text: 'Leaves', isCorrect: true), // Correct option
      Option(code: 'D', text: 'Flowers', isCorrect: false),
    ],
    solution: 'Leaves are responsible for photosynthesis in plants.', answer: 'Leaves',
  ),
  Question(
    text: 'What is the chemical symbol for water?',
    options: [
      Option(code: 'A', text: 'O', isCorrect: false),
      Option(code: 'B', text: 'H2O', isCorrect: true), // Correct option
      Option(code: 'C', text: 'CO2', isCorrect: false),
      Option(code: 'D', text: 'N2', isCorrect: false),
    ],
    solution: 'The chemical symbol for water is H2O.', answer: 'H2O',
  ),
  Question(
    text: 'Which gas is responsible for the greenhouse effect?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: false),
      Option(code: 'B', text: 'Carbon dioxide', isCorrect: true), // Correct option
      Option(code: 'C', text: 'Nitrogen', isCorrect: false),
      Option(code: 'D', text: 'Methane', isCorrect: false),
    ],
    solution: 'Carbon dioxide is responsible for the greenhouse effect.', answer: 'Carbon dioxide',
  ),
  Question(
    text: 'What is the smallest unit of life?',
    options: [
      Option(code: 'A', text: 'Cell', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Atom', isCorrect: false),
      Option(code: 'C', text: 'Molecule', isCorrect: false),
      Option(code: 'D', text: 'Organ', isCorrect: false),
    ],
    solution: 'The smallest unit of life is the cell.', answer: 'Cell',
  ),
  Question(
    text: 'What gas do plants release during photosynthesis?',
    options: [
      Option(code: 'A', text: 'Oxygen', isCorrect: true), // Correct option
      Option(code: 'B', text: 'Carbon dioxide', isCorrect: false),
      Option(code: 'C', text: 'Nitrogen', isCorrect: false),
      Option(code: 'D', text: 'Hydrogen', isCorrect: false),
    ],
    solution: 'Plants release oxygen during photosynthesis.', answer: 'Oxygen',
  ),
];