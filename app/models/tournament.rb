class Tournament < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :buy_in, presence: true

  def balance
    return unless !award.blank?
    award - buy_in
  end

  def roi
    return 0 if buy_in.zero?
    (((balance) / buy_in.to_f) * 100).round(2)
  end
end
