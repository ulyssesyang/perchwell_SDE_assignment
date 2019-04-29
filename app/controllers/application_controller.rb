class ApplicationController < ActionController::API
    # include helper functions into App
    include Response
    include ExceptionHandler
end
