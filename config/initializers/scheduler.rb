require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton

scheduler.in '24h' do
    # do stuff
    if Task.first.duedate < Time.now
        PostMailer.with(user: User.first, task: Task.first).task_reminder.deliver_now
    end
  end