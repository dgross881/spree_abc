module Spree
  class Editor < ActiveRecord::Base
    has_many :param_categories
  end
end
