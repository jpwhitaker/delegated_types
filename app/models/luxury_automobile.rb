# == Schema Information
#
# Table name: luxury_automobiles
#
#  id              :bigint           not null, primary key
#  leather_seats   :boolean
#  num_screens     :integer
#  custom_monogram :string
#
class LuxuryAutomobile < ApplicationRecord
  include Vehicleable
  delegate_missing_to :vehicle
end
