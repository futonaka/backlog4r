module Backlog4r
  class Admin < Client 
    def initialize(space_name, user_id, password)
      super(space_name, user_id, password, 'backlog.admin')
    end
  end
end

