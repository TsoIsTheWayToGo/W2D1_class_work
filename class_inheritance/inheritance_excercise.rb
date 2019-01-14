class Employee
  attr_accessor :name, :title, :salary, :boss, :employees
  def initialize(name,salary,title,boss, employees=[])
    @name, @salary, @title, @boss, @employees = name, salary, title, boss, employees
  end

  def bonus(multiplier)
    salary * multiplier
  end
  
end

class Manager < Employee 

   def bonus(multiplier)
    sub_salaries.sum * multiplier
   end
private
  def sub_salaries
    subs = []
    employees.each do |el|
      if el.class != Array
        subs << el
      else
        subs << bonus(multiplier)
      end
    end
    subs.map {|el| el.salary}
  end

end

 s = Employee.new("Shawana", 12000,"TA","Darren")
 s1 = Employee.new("David", 10000,"TA","Darren")
manager = Manager.new("Darren", 78000,"TA_manager","Ned", [s,s1])
manager = Manager.new("Ned", 78000,"TA_manager","Ned", [s,s1])
#  manager.bonus(4)
#  s1.bonus(3)
 manager.employees