class Candidate < ApplicationRecord
  has_many :candidate_policies
  has_many :policies, through: :candidate_policies
  has_many :polls
  has_many :articles

  def urlify
      self.name.split(" ").join("+")
  end

  def poll_date
    @dates = []
    self.polls.each do |poll|
      @dates << poll[:date]
    end
    @dates
  end

  def poll_source
    @sources = []
    self.polls.each do |poll|
      @sources << poll[:source]
    end
    @sources
  end

  def poll_value
    @values = []
    self.polls.each do |poll|
      @values << poll[:value]
    end
    @values
  end

end
