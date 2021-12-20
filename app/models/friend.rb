class Friend < ApplicationRecord
    belongs_to :user
    
    PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/

    validates_presence_of :first_name, presence: true, :message => 'Needs to have a first name'
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP, allow_blank: true, :message => 'Not a valid email'
    validates_format_of :phone, with: PHONE_NUMBER_REGEX, :message => 'Phone number not valid'


end
