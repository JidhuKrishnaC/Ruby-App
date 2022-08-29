class UserPdf < Prawn::Document
    def initialize(users)
        super()
        @user = User.all
        user_details
    end

    def user_details
        table user_table
    end

    def user_table
        [["First", "Last", "Email", "DOB"]]+
        @user.map do |u|
            [u.firstname, u.lastname, u.email, u.dob]
        end
    end
end