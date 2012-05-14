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
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :bundle do
    run "ln -s #{shared_path}/vendor #{release_path}/vendor"
  end
end

after "deploy:update", "db:symlink"
after "deploy:update", "deploy:bundle"
