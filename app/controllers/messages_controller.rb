class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def reply
    message_body = params["Body"]
    from_number = params["From"]
    SMS.new(from_number, message_body).send
  end
end
