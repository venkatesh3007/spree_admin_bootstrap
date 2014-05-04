module SpreeAdminBootstrap
  module Generators
    class InstallGenerator < Rails::Generators::Base
  
      source_root File.expand_path("../templates", __FILE__)
      
      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require spree/backend/spree_admin_bootstrap\n"
      end

      def add_stylesheets
        copy_file 'stylesheets/spree_admin_bootstrap.css', 'app/assets/stylesheets/spree/backend/spree_admin_bootstrap.css'
        remove_file 'vendor/assets/stylesheets/spree/backend/all.css'
        create_file 'vendor/assets/stylesheets/spree/backend/all.css' do
          "/*
          * This is a manifest file that'll automatically include all the stylesheets available in this directory
          * and any sub-directories. You're free to add application-wide styles to this file and they'll appear at
          * the top of the compiled file, but it's generally better to create a new file per style scope.
          *
          *= require spree/backend/spree_admin_bootstrap
          *= require_self
          *= require_tree .
          */
          "
        end
      end
    end
  end
end
