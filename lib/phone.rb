class Phone
  attr_reader(:type, :area_code, :number)

  def initialize(attributes)
    @type = attributes.fetch(:type)
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
  end
end
