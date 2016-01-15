class Mailing
  attr_reader(:address, :city, :state, :zip_code)
  @@mailings = []

  def initialize(attributes)
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip_code = attributes.fetch(:zip_code)
    @id = @@mailings.length + 1
  end

  define_singleton_method(:all) do
    @@mailings
  end

  def save
    @@mailings.push(self)
  end

  define_singleton_method(:clear) do
    @@mailings = []
  end
end
