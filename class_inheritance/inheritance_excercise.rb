class Employee
  attr_accessor :name, :title, :salary, :boss
  def initialize(name,salary,title,boss)
    @name, @salary, @title, @boss = name, salary, title, boss
  end

  def bonus(multiplier)
    salary * multiplier
  end

end

class Manager < Employee
  attr_reader :employees
  def initialize(name,salary,title,boss,employees)
    @employees = employees
    super(name,salary,title,boss)
  end

   def bonus(multiplier)
    all_subordinates.map {|sub| sub.salary}.inject(0,:+) * multiplier
   end



  def all_subordinates
    subs = []
    employees.each do |el|
      if el.class == Manager
        subs << el
        subs += el.all_subordinates
      else
        subs << el
      end
    end
    subs
  end

end

 #s = Employee.new("Shawana", 12000,"TA","Darren")
 #s1 = Employee.new("David", 10000,"TA","Darren")
#manager = Manager.new("Darren", 78000,"TA_manager","Ned", [s,s1])
#founder = Manager.new("Ned", 100000,"founder","Ned", [manager])
