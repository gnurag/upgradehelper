module UpgradeHelper
	module Cli
		class Sat62 < Clamp::Command
			option "-a", :flag, "Run all checks", :attribute_name => :all_checks, :default => false

			def execute
				if all_checks?
					puts "Running all checks"
				end
			end
		end
	end
end