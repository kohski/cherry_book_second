class User
  class BloodType
    attr_reader :type
    def initialize(type)
      @type = type
    end
  end
end

blood_type = User::BloodType.new('A')
blood_type.type # => "A"