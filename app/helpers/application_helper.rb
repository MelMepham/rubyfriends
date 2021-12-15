module ApplicationHelper

    def active_class(path)
        if request.path == path
          return 'link dim hot-pink dib mr3'
        else
          return 'link dim white dib mr3'
        end
    end
      
end
