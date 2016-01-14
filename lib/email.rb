class Email
  attr_reader(:type, :email_address)
  @@emails = []

  def initialize(attributes)
    @type = attributes.fetch(:type)
    @email_address = attributes.fetch(:email_address)
  end

  define_singleton_method(:all) do
    @@emails
  end
end
