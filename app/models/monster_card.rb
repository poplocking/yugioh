# frozen_string_literal: true

class MonsterCard < ApplicationRecord
  belongs_to :race
  belongs_to :attribute
  belongs_to :type

  validates :name, presence: true
  validates :atk, presence: true, numericality: { only_float: true }
  validates :def, presence: true, numericality: { only_float: true }
end
