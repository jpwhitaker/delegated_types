module Autoable
  extend ActiveSupport::Concern
  
  base_attributes = Automobile.attribute_names
  unwanted_attributes = %w[autoable_type autoable_id]
  attributes_to_copy = base_attributes.reject { |attribute| unwanted_attributes.include? attribute}
  # byebug

  # def create_setter_methods attributes
  #   attributes.each do |attribute|
  #     define_method("#{attribute}=") do |val|
  #       instance_variable_set("@#{attribute}", val)
  #     end
  #   end
  # end

  included do
    has_one :automobile, as: :autoable, touch: true

    puts "included in: #{self.name}"
    
    if self.name != "Automobile"
      # create_setter_methods(attributes_to_copy)
      

      attributes_to_copy.each do |attribute|
        #runs when attribute is called not when its included
        #creates attribute on instance but actually should be accessing parent
        define_method("#{attribute}=") do |val|
          # byebug

          self.automobile[attribute] = val
          self.automobile.save!
          # instance_variable_set("@#{attribute}", val)
        end
        
        define_method(attribute) do
          # instance_variable_get("@#{attribute}")
          self.automobile[attribute]
        end

       
      end
    
    end

  end
end



#Idea to try for missing attr
# def method_missing(method, *args, &block)
#   super unless method =~ /_date$/
#   class_eval { attr_accessor method }
#   super
# end