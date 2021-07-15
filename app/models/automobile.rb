class Automobile < ApplicationRecord
  belongs_to :user
  delegated_type :autoable, types: %w[ Automobile LuxuryAutomobile ]
  include Autoable
  # delegate :custom_monogram, to: :autoable


end
