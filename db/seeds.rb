["Should a photo ID be required to vote?","Should the government raise the federal minimum wage? "].each do |q|
  Question.create(question: q)
end

c1 = Candidate.create(answers: {0 => 0, 1 => 0 }, name:'Ms. Judy Brady')
c2 = Candidate.create(answers: {0 => 1, 1 => 1 }, name:'Blaine Somethingorother')
c3 = Candidate.create(answers: {0 => 0, 1 => 1 }, name:'Mr. Paul Smith')
c4 = Candidate.create(answers: {0 => 1, 1 => 0 }, name:'Mrs. Kathrine Goldwater')


# TODO
# "Should a photo ID be required to vote?"
# "Should the government raise the federal minimum wage?"
