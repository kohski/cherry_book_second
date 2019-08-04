$program_name = 'Awsome_program'

class program
  def initialize(name)
    $program_name = name
  end

  def self.name
    $program_name
  end

  def name
    $program_name
  end
end

Program.name #=>