module Commands
  class Stop < Commands::Base
    def execute
      current_chat.destroy
    end
  end
end
