module UserDetailsConcerns

    def add_user_details(access, user, user_detail)
        ApplicationRecord.transaction do 
            @user_detail = user.user_details.build(user_detail)
            @user_detail.save!
            @permission = user.permissions.build(
                access: access, 
                user_detail: @user_detail
            )
            @permission.save!
        end
    end

    def update_user_details(access, user, user_details)
        unless user.permissions == :write
            
        end
    end
    
end