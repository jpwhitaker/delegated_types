module Autoable
  extend ActiveSupport::Concern

  included do
    has_one :automobile, as: :autoable, touch: true
  end
end