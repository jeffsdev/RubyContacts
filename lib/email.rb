class Email
attr_reader(:type, :email_address)
  def initialize(attributes)
    @type = attributes.fetch(:type)
    @email_address = attributes.fetch(:email_address)
  end
end
