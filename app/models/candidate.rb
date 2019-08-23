class Candidate < ApplicationRecord
  has_many :candidate_policies
  has_many :policies, through: :candidate_policies
  has_many :polls
  has_many :articles

  def urlify
      self.name.split(" ").join("+")
  end

##______________________________##

  def articles_date_sorted
      self.articles.sort_by{|article| article.publish_date}.reverse
  end

  def self.home_page_sort
      # get all candidates with non-nil cash_on_hand
      have_cash = self.all.select{|candidate| candidate.cash_on_hand != nil}
      # get all candidates with nil cash_on_hand
      no_cash = self.all.select{|candidate| candidate.cash_on_hand == nil}
      #order based on cash_on_hand, then add those with no cash.
      cash_ordered = have_cash.sort_by{|candidate| candidate.cash_on_hand}.reverse
      cash_ordered + no_cash
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

##_____________FINANCIALS METHODS_________________##

##_____________Receipts_________________##

  def self.all_receipts
      self.all.map{|candidate| candidate.total_receipts}
  end

  def self.no_nil_receipts
      self.all_receipts.select{|receipt| receipt != nil}
  end

  def self.max_receipts
      self.no_nil_receipts.max
  end

  def self.min_receipts
      self.no_nil_receipts.min
  end

  def self.receipts_spread
      self.max_receipts - self.min_receipts
  end

##_____________Disbursements_________________##

  def self.all_disbursements
      self.all.map{|candidate| candidate.total_disbursements}
  end

  def self.no_nil_disbursements
      self.all_disbursements.select{|disbursement| disbursement != nil}
  end

  def self.max_disbursements
      self.no_nil_disbursements.max
  end

  def self.min_disbursements
      self.no_nil_disbursements.min
  end

  def self.disbursements_spread
      self.max_disbursements - self.min_disbursements
  end

##_____________Cash on Hand_________________##

  def self.all_cash_on_hand
      self.all.map{|candidate| candidate.cash_on_hand}
  end

  def self.no_nil_cash_on_hand
      self.all_cash_on_hand.select{|cash| cash != nil}
  end

  def self.nil_cash_on_hand
      self.all_cash_on_hand.select{|cash| cash == nil}
  end

  def self.max_cash_on_hand
      self.no_nil_cash_on_hand.max
  end

  def self.min_cash_on_hand
      self.no_nil_cash_on_hand.min
  end

  def self.cash_on_hand_spread
      self.max_cash_on_hand - self.min_cash_on_hand
  end

##_____________POLLING METHODS_________________##

  def self.candidate_polls
      self.all.map do |candidate|
        candidate.polls
      end
  end

  def self.no_nil_polls
      self.candidate_polls.select{|poll| poll != nil}
  end

  def self.poll_dates
      self.no_nil_polls.map do |poll|
        poll.map do |values|
          value.date
        end
      end
  end

  def self.most_recent_poll
    Poll.find(self.poll_ids.first)
  end

  def self.most_recent_poll_value
    self.most_recent_poll.value
  end

  def self.oldest_poll
    Poll.find(self.poll_ids.last)
  end

  def self.oldest_poll_value
    self.oldest_poll.value
  end

  def self.poll_spread
    self.most_recent_poll_value - self.oldest_poll_value
  end
 end
