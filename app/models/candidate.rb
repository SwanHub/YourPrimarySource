class Candidate < ApplicationRecord
  has_many :candidate_policies
  has_many :policies, through: :candidate_policies
  has_many :polls
  has_many :articles

  def urlify
      self.name.split(" ").join("+")
  end

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

  def self.all_cash_on_hand
      self.all.map{|candidate| candidate.cash_on_hand}
  end

  def self.no_nil_cash_on_hand
      self.all_cash_on_hand.select{|cash| cash != nil}
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

end
