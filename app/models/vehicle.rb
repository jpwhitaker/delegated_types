# == Schema Information
#
# Table name: vehicles
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint
#  num_wheels       :integer
#  num_doors        :integer
#  color            :string
#  vehicleable_type :string
#  vehicleable_id   :bigint
#
class Vehicle < ApplicationRecord
  belongs_to :user
  delegated_type :vehicleable, types: %w[Automobile LuxuryAutomobile]
  delegate_missing_to :luxury_automobile, allow_nil: true # not sure if we want this >.<

end
