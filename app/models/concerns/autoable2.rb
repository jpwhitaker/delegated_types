module Autoable
  extend ActiveSupport::Concern
  
  base_attributes = Automobile.attribute_names
  unwanted_attributes = %w[autoable_type autoable_id]
  attributes_to_copy = base_attributes.reject { |attribute| unwanted_attributes.include? attribute}

  included do
    has_one :automobile, as: :autoable, touch: true
    
    if self.name != "Automobile"
      # create_setter_methods(attributes_to_copy)
      attributes_to_copy.each do |attribute|

        define_method("#{attribute}=") do |val|
          self.automobile[attribute] = val
          self.automobile.save!
        end
        
        define_method(attribute) do
          self.automobile[attribute]
        end
      end
    end
  end
end


