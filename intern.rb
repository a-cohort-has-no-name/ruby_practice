module EmailReportable
	def send_email_report
		puts "Sending email..."
		# use some email library to do the thing
		puts "Email sent!"
	end

	def order_supplies
		puts "Ordered supplies"
	end
end

class Employee
	attr_accessor :first_name, :last_name, :salary, :active

	def initialize(input_options)
		@first_name = input_options[:first_name] 
		@last_name = input_options[:last_name]
		@salary = input_options[:salary]
		@active = input_options[:active]
	end

	def print_info
		puts "#{first_name} #{last_name} makes #{salary} a year."
	end

	def give_annual_raise
		@salary = 1.05 * @salary
	end
end

class Manager < Employee
	include EmailReportable
	attr_accessor :employees
	def initialize(input_options)
		super
		@employees = input_options[:employees]
	end

	def give_all_raises
		employees.each do |employee|
			employee.give_annual_raise
		end
	end

	def fire_all_employees
		employees.each do |employee|
			employee.active = false
		end
	end
end

class Intern < Employee
	include EmailReportable
end

intern = Intern.new(first_name: "Krunal", last_name: "Patel", salary: 20000, active: true)
intern.print_info
intern.send_email_report
intern.order_supplies





















