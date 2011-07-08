export GEM_HOME=$HOME/.gem/ruby/1.8
export GEM_PATH=$GEM_HOME
export PATH=$PATH:/usr/local/rvm/rubies/ruby-1.8.7-p334/bin:$HOME/.gem/ruby/1.8/bin
rake db:migrate:reset RAILS_ENV="production"
echo "ja" | rake redmine:load_default_data RAILS_ENV="production" 
python test.py
