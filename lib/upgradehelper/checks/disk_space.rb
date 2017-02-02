module UpgradeHelper
  module Checks
    class DiskSpace
    	def initialize(path)
    		@path = path
    	end
    	def run
    		mb_limit = 5 * 1024
    		var_lib_dir = "/var/lib"
    		free_space = `df -m --exclude-type=tmpfs /var`.split("\n")[-1].split[3].to_i
    		if free_space < mb_limit
    			puts "A minimum of #{mb_limit} free disk space is required"
    		end
    	end
    end
  end
end
