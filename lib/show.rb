class Show

  attr_reader :name, :creator, :characters

  def initialize(str_name, str_creator, arr_characters)
    @name = str_name
    @creator = str_creator
    @characters = arr_characters
  end

  def total_salary
    @characters.reduce(0) { |sum, character| sum + character.salary }
  end
end
