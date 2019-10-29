# frozen_string_literal: true

class SpellCard < ApplicationRecord
  belongs_to :type
  belongs_to :attribute
  belongs_to :race

  validates :name, presence: true
  validates :description, presence: true
end
