class TaskPdf < Prawn::Document
    def initialize(tasks)
        super()
        @task = Task.all
        task_details
    end

    def task_details
        table task_table
    end

    def task_table
        value={}
        User.all.each{|u| value[u.id] = u.firstname}
        
        [["Task Name", "Due Date", "Status", "Developer"]]+
        @task.map do |t|
            [t.taskname, t.duedate, t.status.to_s, value[t.user_id]]
        end
    end
end