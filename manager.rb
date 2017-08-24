require "./employees.rb"
require "./email_reportable.rb"

module Actualize
	class Manager < Employee
		attr_accessor :employees
		include EmailReportable

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
end













