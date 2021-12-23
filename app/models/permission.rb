class Permission < ApplicationRecord
    belongs_to :user_detail
    belongs_to :user

    enum access: [:owner, :read_only, :write, :creator]

end