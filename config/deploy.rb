#rvm version in server
set :rvm_ruby_version, 'ruby-2.1.2'

#Application name
# set :application, 'kickmarket'

# Source code management. Default value for :scm is :git
set :scm, :none


#Server user
set :user, "ec2-user"

#Github repo url and branch if needed
# set :repo_url, 'https://github.com/avenir/ave.git'

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

#Must be set true for password prompt from git to work
set :pty, true

# Back up 2 previous releases. Default value for keep_releases is 5
set :keep_releases, 3

#keep a cached code checkout on the server and do updates each time(more efficient)
set :deploy_via, :remote_cache

#Set staging as default environment
#cap deploy => staging
#cap production deploy => production
set :default_stage, "production"