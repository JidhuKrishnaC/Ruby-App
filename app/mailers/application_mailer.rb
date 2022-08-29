class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:login, :username)
  layout "mailer"
end
