require "./employees.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info
# puts employee1.give_annual_raise
# puts employee1.first_name
# puts employee2.first_name
# puts employee2.last_name
# puts employee2.salary
puts employee1.salary
puts employee1.active
employee1.active = false
puts employee1.active

manager = Manager.new(first_name: "Calvin", last_name: "Bartholow", salary: 90000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_email_report
manager.give_all_raises
puts employee1.salary
puts employee2.salary
manager.fire_all_employees
puts employee1.active
puts employee2.active

intern = Intern.new(first_name: "Krunal", last_name: "Patel", salary: 20000, active: true)
intern.print_info
intern.send_email_report
intern.order_supplies