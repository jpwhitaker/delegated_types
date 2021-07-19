# == Schema Information
#
# Table name: automobiles
#
#  id :bigint           not null, primary key
#
class Automobile < ApplicationRecord
  include Vehicleable
  delegate_missing_to :vehicle

end
