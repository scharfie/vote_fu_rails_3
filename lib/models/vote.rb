class Vote < ActiveRecord::Base
  # NOTE: Votes belong to the "voteable" interface, and also to voters
  belongs_to :voteable, :polymorphic => true
  belongs_to :voter,    :polymorphic => true
  
  attr_accessible :vote, :voter, :voteable

  # Uncomment this to limit users to a single vote on each item. 
  # validates_uniqueness_of :voteable_id, :scope => [:voteable_type, :voter_type, :voter_id]

  # Scope methods
public
  def self.for_voter(voter)
    where({
      :voter_id => voter.id,
      :voter_type => voter.class.base_class.name
    })
  end

  def self.for_voteable(voteable)
    where({
      :voteable_id => voteable.id,
      :voteable_type => voteable.class.base_class.name
    })
  end

  def self.recent(date=nil)
    date ||= 2.weeks.ago
    where('created_at > ?', date)
  end

  def self.descending
    order("created_at DESC")
  end
end
