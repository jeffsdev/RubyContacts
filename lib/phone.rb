class Phone
  attr_reader(:type, :area_code, :number)
  @@phones = []

  def initialize(attributes)
    @type = attributes.fetch(:type)
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
    @id = @@phones.length + 1
  end

  define_singleton_method(:all) do
    @@phones
  end

  def save
    @@phones.push(self)
  end

  define_singleton_method(:clear) do
    @@phones = []
  end

  def id
    @id
  end

  define_singleton_method(:find) do |identification|
    found_item = nil
    @@phones.each() do |item|
      if item.id == identification.to_i
        found_item = item
      end
    end
    found_item
  end
end
