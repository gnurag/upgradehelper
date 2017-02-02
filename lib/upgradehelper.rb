require 'upgradehelper/version'

module UpgradeHelper
	Dir[File.dirname(__FILE__) + '/upgradehelper/checks/*.rb'].each {|file| require file }
end
