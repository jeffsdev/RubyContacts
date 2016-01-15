class Email
  attr_reader(:type, :email_address)
  @@emails = []

  def initialize(attributes)
    @type = attributes.fetch(:type)
    @email_address = attributes.fetch(:email_address)
    @id = @@emails.length + 1
  end

  define_singleton_method(:all) do
    @@emails
  end

  def save
    @@emails.push(self)
  end

  define_singleton_method(:clear) do
    @@emails = []
  end
end
