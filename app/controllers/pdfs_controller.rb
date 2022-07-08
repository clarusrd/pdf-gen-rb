class PdfsController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: ENV['USER_AUTH'] || "pdf" , password: ENV["PASS_AUTH"] || "pass"

  def create
    @pdf = ReportPdf.new(params).render()

    render json: {binary_pdf:  Base64.strict_encode64(@pdf)}
  end
end
