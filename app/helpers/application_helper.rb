module ApplicationHelper

    def active_class(path)
        if request.path == path
          return 'bg-gray-900 text-white px-3 py-2 rounded-md text-sm font-medium'
        else
          return 'text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium'
        end
    end
      
end
