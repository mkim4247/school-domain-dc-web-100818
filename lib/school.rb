class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 

  def add_student(student_name, grade)
    if @roster[grade] ||= []
      @roster[grade] << student_name
    end 
  end 
    
  #   if @roster.keys.include?(grade)
  #     @roster[grade] << student_name
  #   else  
  #     @roster[grade] = []
  #     @roster[grade] << student_name
  #   end 
  # end 
    
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    sorted_roster = {}
    @roster.each do |grade, student_list|
      sorted_roster[grade] = student_list.sort
    end 
    sorted_roster
  end 
end 

