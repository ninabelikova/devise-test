class Question < ActiveRecord::Base
  belongs_to :deck
  validates :text, presence: true
  validates :answer1, presence: true
  validates :answer2, presence: true
end
