module SpreeTheme
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'spree_theme'

    config.cached_paths = %w(layout directives products home cart promos)
    config.autoload_paths += %W(#{config.root}/lib)
    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    config.after_initialize do |app|
      #config.paths['app/views'] << path 
      #ActionController::Base.append_view_path( Rails.root.join( "public", "shops", Rails.env ) )
    end
    
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    initializer "sprangular.assets.configure" do |app|
      assets = app.assets

      assets.register_mime_type 'text/html', '.html'
      assets.register_engine '.slim', Slim::Template

      app.config.assets.precompile += %w( sprangular bootstrap/* )
    end
    
    # sets the manifests / assets to be precompiled, even when initialize_on_precompile is false
    initializer "spree.assets.precompile", :group => :all do |app|
      app.config.assets.precompile += %w( store/spree_theme.* )
      
    end
    
    config.to_prepare &method(:activate).to_proc
  end
end
