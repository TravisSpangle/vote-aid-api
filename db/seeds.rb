["Should a photo ID be required to vote?","Should the government raise the federal minimum wage? "].each do |q|
  Question.create(question: q)
end
