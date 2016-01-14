class Mailing
  attr_reader(:address, :city, :state, :zip_code)
  @@mailings = []

  def initialize(attributes)
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip_code = attributes.fetch(:zip_code)
  end

  define_singleton_method(:all) do
    @@mailings
  end
end
