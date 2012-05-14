set :application, "citybam"

set :repository,  "git@github.com:eef/citybam.git"

set :scm, :git

server "citybam.com", :app, :web, :db, :primary => true

set :user, 'root'

set :deploy_to, "/home/citybam.com"

set :use_sudo, false

set :branch, 'master'

set :keep_releases, 2


namespace :db do
  desc <<-DESC
    Symlink database configuration file
  DESC
  task :symlink, :except => { :no_release => true } do
    run "ln -nfs /home/citybam.com/shared/config/database.yml #{release_path}/config/database.yml"
  end
end

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc <<-DESC
    Install bundle in deployment mode
  DESC
  task :bundle_deploy do
    run "bundle install --deployment"
  end
end

after "deploy:update", "deploy:bundle_deploy", "deploy:db:symlink"


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
