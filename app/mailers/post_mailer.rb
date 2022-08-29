class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created
    @user = params[:user]
    @task = params[:task]
    @greeting = "Hi"

    mail(
      to: User.first.email,
      subject: "New task created"
    ) 
  end
  def post_destroyed
    @user = params[:user]
    @task = params[:task]
    @greeting = "Hi"

    mail(
      to: User.first.email,
      subject: "Task removed"
    ) 
  end
  def post_updated
    @user = params[:user]
    @task = params[:task]
    @greeting = "Hi"

    mail(
      to: User.first.email,
      subject: "Task updated"
    ) 
  end
  def task_reminder
    @user = params[:user]
    @task = params[:task]
    @greeting = "Hi"

    mail(
      to: User.first.email,
      subject: "Reminder"
    )
  end
end
