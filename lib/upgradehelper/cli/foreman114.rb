module UpgradeHelper
	module Cli
		class Foreman114 < Clamp::Command
			option "-f", :flag, "Run all checks", :attribute_name => :all_checks, :default => false

			def execute
				if all_checks?
					puts "Running all checks"
				end
			end
		end
	end
end