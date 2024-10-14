class Tournament < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :buy_in, presence: true

  def balance
    return unless !award.blank?
    award - buy_in
  end
end
