class Contact
  attr_reader(:first_name, :last_name, :job_title, :company)
  @@contacts = []

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @id = @@contacts.length + 1
  end

  define_singleton_method(:all) do
    @@contacts
  end

  def save
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  def id
    @id
  end

  define_singleton_method(:find) do |identification|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id == identification.to_i
        found_contact = contact
      end
    end
    found_contact
  end
end
