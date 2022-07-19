class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!, :only => "reply", :raise => false

  def home
  end

  def about
  end

  def contact
  end

  def index
  end

  def admin_zone
  end
end
