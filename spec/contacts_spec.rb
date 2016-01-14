require('rspec')
require('contact')
require('mailing')
require('phone')

describe('Contact') do
  describe("#first_name, #last_name, #job_title, #company") do
    it('returns the contact info') do
      test_contact = Contact.new({:first_name => "Bro", :last_name => "Chadbro", :job_title => "Salesman", :company => "Jane's Car Shack"})
      expect(test_contact.first_name()).to(eq("Bro"))
      expect(test_contact.last_name()).to(eq("Chadbro"))
      expect(test_contact.job_title()).to(eq("Salesman"))
      expect(test_contact.company()).to(eq("Jane's Car Shack"))
    end
  end
end

describe('Mailing') do
  describe("#address, #city, #state, #zip_code") do
    it('returns the mailing address info') do
      test_mailing = Mailing.new({:address => "420 SW Fort Wenty St. Apt.69", :city => "Burns", :state => "Oregon", :zip_code => "80085"})
      expect(test_mailing.address()).to(eq("420 SW Fort Wenty St. Apt.69"))
      expect(test_mailing.city()).to(eq("Burns"))
      expect(test_mailing.state()).to(eq("Oregon"))
      expect(test_mailing.zip_code()).to(eq("80085"))
    end
  end
end

describe('Phone') do
  describe("#type, #area_code, #number") do
    it('returns the phone number info') do
      test_phone = Phone.new({:type => "Cell", :area_code => "420", :number => "4558008"})
      expect(test_phone.type()).to(eq("Cell"))
      expect(test_phone.area_code()).to(eq("420"))
      expect(test_phone.number()).to(eq("4558008"))
    end
  end
end
