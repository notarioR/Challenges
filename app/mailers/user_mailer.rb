class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_vote(challenge, vote)
  	@challenge = challenge
  	@vote = vote

  	mail(to: 'notariorojo@gmail.com',
  		subject: "New vote add en #{challenge.title}")
  end
end
