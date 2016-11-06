["Should a photo ID be required to vote?",
 "Should the government raise the federal minimum wage?"
 "Should we expand the military?"].each do |q|
  Question.create(question: q)
end

c1 = Candidate.create(answers: {1 => 0, 2 => 1, 3 => 1 }, name:'Hillary Clinton')
c2 = Candidate.create(answers: {1 => 0, 2 => 1, 3 => 0 }, name:'Jill Stein')
c3 = Candidate.create(answers: {1 => 0, 2 => 0, 3 => 0 }, name:'Gary Johnson')
c4 = Candidate.create(answers: {1 => 1, 2 => 0, 3 => 1 }, name:'Donald Trump')
