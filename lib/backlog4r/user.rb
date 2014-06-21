module Backlog4r
  class User < Client
    def initialize(space_name, user_id, password)
      super(space_name, user_id, password, 'backlog')
    end
  end
end

