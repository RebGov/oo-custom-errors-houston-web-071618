class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end



  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
     raise PartnerError
   rescue PartnerError => error
     puts error.message
   end
   else
    person.partner = self
  end
end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name


#1.defining the custom error class
  # class PartnerError < StandardError
  # end

#2. raising our custom error
  # if person.class != Person
  #      raise PartnerError
  #    else
##custom error handling-resquing
# 1. writing a custom error msg
  # class PartnerError < StandardError
  #   def message
  #     "you must give the get_married method an argument of an instance of the person class!"
  #   end
  # end
#2. implementing the RESCUE
  # begin
  #   raise YourCustomError
  # rescue YourCustomError
  # end
