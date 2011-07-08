export GEM_HOME=$HOME/.gem/ruby/1.8
export GEM_PATH=$GEM_HOME
export PATH=$PATH:/usr/local/rvm/rubies/ruby-1.8.7-p334/bin:$HOME/.gem/ruby/1.8/bin
gem install -v=0.4.2 i18n --no-ri --no-rdoc
gem install -v=2.3.11 rails --no-ri --no-rdoc
gem install -v=0.8.7 rake --no-ri --no-rdoc
gem install mysql --no-ri --no-rdoc
gem install rack --no-ri --no-rdoc
gem install fcgi --no-ri --no-rdoc
gem install fcgi_handler --no-ri --no-rdoc
rake gems:install
rake config/initializers/session_store.rb
python test.py

