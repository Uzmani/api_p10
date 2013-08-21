get '/' do
  @repo = 'recent_tweets1'
  @count = Octokit.commits("uzmani/#{@repo}").count 
  @commit_message = Octokit.commits("uzmani/recent_tweets1").last.commit.message
  @date_time = Octokit.commits("uzmani/recent_tweets1").last.commit.committer.date



  erb :index
end
