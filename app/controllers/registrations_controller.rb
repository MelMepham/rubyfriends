class RegistrationsController < Devise::RegistrationsController
    include UserDetailsConcerns
    def create
        super
        add_user_details(
            :owner,
            current_user,
            { email: current_user.email }
        )
        # add custom create logic here
    end

    def edit
        super
        @my_user_detail
        binding.pry
    end

end