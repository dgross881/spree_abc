require 'spree/permitted_attributes'
module Spree
  module PermittedAttributes
    ATTRIBUTES_FOR_SITE=[:site_attributes]
    mattr_reader *ATTRIBUTES_FOR_SITE

    @@site_attributes = [:name, :domain, :short_name, :has_sample, :index_page,:theme_id,:foreign_theme_id, :admin_email, :admin_password]
  end
end