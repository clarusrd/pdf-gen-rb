class PdfsController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: ENV['USER_AUTH'] || "clarus" , password: ENV["PASS_AUTH"] || "pass"

  def create
    @pdf = ReportPdf.new(params).render()

    render json: Base64.encode64(@pdf)
  end
end
