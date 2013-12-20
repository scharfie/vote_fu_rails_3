Gem::Specification.new do |s|
  s.name = "vote_fu"
  s.version = "0.0.13"
  s.date = "2013-12-20"
  s.summary = "Voting for ActiveRecord with multiple vote sources and advanced features."
  s.email = "scharfie@gmail.com"
  s.homepage = ""
  s.description = "VoteFu provides the ability to have multiple voting entities on an arbitrary number of models in ActiveRecord."
  s.has_rdoc = false
  s.authors = ["Peter Jackson", "Cosmin Radoi", "Bence Nagy", "Rob Maddox", "Chris Scharf"]
  s.files = [ 
    "CHANGELOG.markdown",
    "MIT-LICENSE",
    "README.markdown",
    "examples/routes.rb", 
    "examples/users_controller.rb",
    "examples/voteable.html.erb",
    "examples/voteable.rb",
    "examples/voteables_controller.rb",
    "examples/votes/_voteable_vote.html.erb",
    "examples/votes/create.rjs",
    "examples/votes_controller.rb",
    "init.rb",
    "lib/acts_as_voteable.rb",
    "lib/acts_as_voter.rb",
    "lib/controllers/votes_controller.rb",
    "lib/generators/templates/migration.rb",
    "lib/generators/vote_fu_generator.rb",
    "lib/has_karma.rb",
    "lib/models/vote.rb",
    "lib/vote_fu.rb",
    "rails/init.rb",
    "test/vote_fu_test.rb"
  ]
end
