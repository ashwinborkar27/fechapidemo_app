class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username])
  end


  def tag_cloud(tags, classes)
  max = tags.sort_by(&:count).last
  tags.each do |tag|
    index = tag.count.to_f / max.count * (classes.size - 1)
    yield(tag, classes[index.round])
  end
end
end
