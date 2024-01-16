class TweetMailer < ApplicationMailer
	def notify(tweet)
		@tweet = tweet
		@user = tweet.user
		mail(to: @user.email, subject: 'Your tweet has succesfully posted')
	end
end
