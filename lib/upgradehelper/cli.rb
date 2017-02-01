require 'clamp'
require 'upgradehelper'
require 'upgradehelper/cli/commands'

module UpgradeHelper
	module Cli

		Clamp do
			subcommand 'satellite-6.2', 'Satellite 6.1 to 6.2 upgrade scenario', Sat62
			subcommand 'foreman-1.14',  'Foreman 1.13 to 1.14 upgrade scenario', Foreman114
		end

	end
end