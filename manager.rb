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
	def send_email_report
		puts "Sending email..."
		# use some email library to do the thing
		puts "Email sent!"
	end
end

manager = Manager.new(first_name: "Calvin", last_name: "Bartholow", salary: 90000, active: true)
manager.print_info
manager.send_email_report














