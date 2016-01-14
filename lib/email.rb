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

  def id
    @id
  end

  define_singleton_method(:find) do |identification|
    found_item = nil
    @@emails.each() do |item|
      if item.id == identification.to_i
        found_item = item
      end
    end
    found_item
  end
end
