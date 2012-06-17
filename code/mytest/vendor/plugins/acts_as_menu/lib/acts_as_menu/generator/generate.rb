require 'rails/generators'
require 'rails/generators/migration'


  #create all the necessary files
  class CreateAll < Rails::Generators::Base
    include Rails::Generators::Migration
    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    #create menu model
    def create_menu_model_file
      template 'f_menu.rb', 'app/models/f_menu.rb'
      template 's_menu.rb', 'app/models/s_menu.rb'
      template 't_menu.rb', 'app/models/t_menu.rb'
      template 'c_menu.rb', 'app/models/c_menu.rb'
    end

    def self.next_migration_number(dirname)
       unless ActiveRecord::Base.timestamped_migrations
         Time.now.utc.strftime("%Y%m%d%H%M%S")
       else
         "%.3d" % (current_migration_number(dirname) + 1)
       end
    end

    def create_menu_migration_file
      migration_template 'create_f_menus_migration.rb', 'db/migrate/create_f_menus.rb'
      migration_template 'create_s_menus_migration.rb', 'db/migrate/create_s_menus.rb'
      migration_template 'create_t_menus_migration.rb', 'db/migrate/create_t_menus.rb'
      migration_template 'create_c_menus_migration.rb', 'db/migrate/create_c_menus.rb'
    end
  end


  #create necessary model to use
  class CreateModel < Rails::Generators::Base
    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end
    #create menu model
    def create_menu_model_file
      template 'f_menu.rb', 'app/models/f_menu.rb'
      template 's_menu.rb', 'app/models/s_menu.rb'
      template 't_menu.rb', 'app/models/t_menu.rb'
      template 'c_menu.rb', 'app/models/c_menu.rb'
    end
  end

  # create example file to use 
  class CreateExample < Rails::Generators::Base
    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    def create_controller_file
      template 'acts_as_menus_controller.rb', 'app/controllers/acts_as_menus_controller.rb'
    end

    def create_view_file
      directory "acts_as_menu-html", "app/views/acts_as_menus"
    end

    def create_css_image_js_file
      directory "acts_as_menu-images","public/images/acts_as_menu-images"
      directory "acts_as_menu-js","public/javascripts/acts_as_menu-js"
      directory "acts_as_menu-css","public/stylesheets/acts_as_menu-css"
    end

    def route_sett
route '
 resources :acts_as_menus do
   collection do
     get "home_menu"
     get "f_menu_win" 
     get "s_menu_win" 
     get "t_menu_win" 
     get "c_menu_win" 
     post "f_menu_create"
     post "s_menu_create"
     post "t_menu_create"
     post "c_menu_update"
     post "update_f_menu"
     post "update_s_menu"
     post "update_t_menu"
   end
   member do
     get "update_f_menu_win"
     get "update_s_menu_win"
     get "update_t_menu_win"
   end
 end
 match "home_menu" => "acts_as_menus#home_menu"
 match "f_menu_win" => "acts_as_menus#f_menu_win"
 match "s_menu_win" => "acts_as_menus#s_menu_win"
 match "t_menu_win" => "acts_as_menus#t_menu_win"
 match "c_menu_win" => "acts_as_menus#c_menu_win"
      '
    end
  end


  #create necessary migration to use
  class CreateMigrate < Rails::Generators::Base
    include Rails::Generators::Migration
    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    def self.next_migration_number(dirname)
       unless ActiveRecord::Base.timestamped_migrations
         Time.now.utc.strftime("%Y%m%d%H%M%S")
       else
         "%.3d" % (current_migration_number(dirname) + 1)
       end
    end

    def create_migration_file
      migration_template 'create_f_menus_migration.rb', 'db/migrate/create_f_menus.rb'
      migration_template 'create_s_menus_migration.rb', 'db/migrate/create_s_menus.rb'
      migration_template 'create_t_menus_migration.rb', 'db/migrate/create_t_menus.rb'
      migration_template 'create_c_menus_migration.rb', 'db/migrate/create_c_menus.rb'
    end
  end
