set :application, "forum-demo"
set :domain, "forum-demo"
set :repository, "git@github.com:riznchang/forum-demo.git"
set :deploy_to, "/home/apps/forum-demo"
role :app, domain
role :web, domain
role :db, domain, :primary => true
set :deploy_via, :remote_cache
set :deploy_env, "production"
set :rails_env, "production"
set :scm, :git
set :branch, "master"
set :scm_verbose, true
set :use_sudo, false
set :user, "apps"
set :group, "apps"

default_environment["PATH"] = "/opt/ruby-enterprise-1.8.7-2011.03/bin:/usr/local/bin:/usr/bin:/bin:/usr/gems"

namespace :deploy do
  desc "restart"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end


