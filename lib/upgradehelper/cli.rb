require 'clamp'
require 'upgradehelper/cli'

module UpgradeHelper
	module Cli

		Clamp do
			subcommand 'satellite_6_2', 'Satellite 6.1 to 6.2 upgrade scenario', Sat62
			subcommand 'foreman1.14', 'Foreman 1.13 to 1.14 upgrade scenario', Foreman114
		end

	end
end