class PostPolicy < ApplicationPolicy 
    def update?
        # Case 1 = User of record
        record.user_id == user.id || user.type == admin_types.include?(user.type)

    end
end