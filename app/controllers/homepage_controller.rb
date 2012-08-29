class HomepageController < ApplicationController
  prepend_before_filter :check_for_authorization
  def index

  end
end
