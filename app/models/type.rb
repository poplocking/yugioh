class Type < ApplicationRecord
  has_many :monster_cards
  has_many :spell_cards
  has_many :trap_cards
end
