class Question < ApplicationRecord
  self.inheritance_column = :nil
  belongs_to :quiz

  has_many :answers
end
