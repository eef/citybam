set :application, "citybam"

set :repository,  "git@github.com:eef/citybam.git"

set :scm, :git

server "citybam.com", :app, :web, :db, :primary => true

set :user, 'root'

set :deploy_to, "/home/citybam.com"

set :use_sudo, false

set :branch, 'master'

set :keep_releases, 2

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
