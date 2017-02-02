module UpgradeHelper
	module Cli
		class Sat62 < Clamp::Command
			option "--all-steps",             :flag, "Run all steps for Satellite 6.2",  :attribute_name => :all_steps,          :default => false
			option "--skip-version-check",    :flag, "Skip Satellite 6.1 version check", :attribute_name => :skip_version_check, :default => false
			option "--skip-disk-speed-check", :flag, "Skip disk throughput check",       :attribute_name => :skip_disk_speed_check, :default => false
			option "--skip-disk-space-check", :flag, "Skip free disk space check",       :attribute_name => :skip_disk_space_check, :default => false
			option "--skip-task-cleanup",     :flag, "Skip stale task cleanup step",     :attribute_name => :skip_task_cleanup,  :default => false
			option "--skip-qpid-cleanup",     :flag, "Skip Qpid queue cleanup step",     :attribute_name => :skip_qpid_cleanup,  :default => false
			option "--skip-sync-plan",        :flag, "Don't disable sync plans",         :attribute_name => :skip_sync_plan,     :default => false

			def execute
				if all_steps?
					puts "Running all steps for Satellite 6.2"
					if not skip_disk_space_check?
						d = UpgradeHelper::Checks::DiskSpace.new("/var/lib")
						d.run
					end
				end				
			end
		end
	end
end