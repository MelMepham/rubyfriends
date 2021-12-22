class Contact < ApplicationRecord

    belongs_to :user
    
    NEW_CONTACT_FORM_SCHEMA = [{
        name: :first_name,
        type: 'input'
    }, {
        name: :last_name,
        type: 'input'
    }, {
        name: :email,
        type: 'input'
    }, {
        name: :phone,
        type: 'input'
    }, {
        name: :twitter,
        type: 'input'
    }]


    PHONE_NUMBER_REGEX = /\[\+]?[(]?[0-9]{2,3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}\z/

    validates_presence_of :first_name, presence: true, :message => 'Needs to have a first name'
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP, allow_blank: true, :message => 'Not a valid email'
    validates_format_of :phone, with: PHONE_NUMBER_REGEX, allow_blank: true, :message => 'Phone number not valid'
end
