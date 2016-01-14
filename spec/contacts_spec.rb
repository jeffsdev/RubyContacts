require('rspec')
require('contact')
require('mailing')
require('phone')
require('email')

    #
##### Specs for Contact class =========================>
    #

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

  describe('.all') do
    it('returns empty array') do
    expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('save information onto the empty array') do
    test_contact = Contact.new({:first_name => "Bro", :last_name => "Chadbro", :job_title => "Salesman", :company => "Jane's Car Shack"})
    test_contact.save
    expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it('empties out the array of contacts') do
    Contact.new({:first_name => "Bro", :last_name => "Chadbro", :job_title => "Salesman", :company => "Jane's Car Shack"})
    Contact.clear
    expect(Contact.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('ties an id to a specific contact') do
    test_contact = Contact.new({:first_name => "Bro", :last_name => "Chadbro", :job_title => "Salesman", :company => "Jane's Car Shack"})
    test_contact.id
    expect(test_contact.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds contact based on id number') do
      test_contact = Contact.new({:first_name => "Bro", :last_name => "Chadbro", :job_title => "Salesman", :company => "Jane's Car Shack"})
      test_contact.save
      test_contact2 = Contact.new({:first_name => "Chad", :last_name => "Chadbrochad", :job_title => "Salesbro", :company => "Jane's Bro Shack"})
      test_contact2.save
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
end

    #
##### Specs for Mailing class =========================>
    #

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

  describe('.all') do
    it('returns empty array') do
    expect(Mailing.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('save information onto the empty array') do
    test_mailing = Mailing.new({:address => "420 SW Fort Wenty St. Apt.69", :city => "Burns", :state => "Oregon", :zip_code => "80085"})
    test_mailing.save
    expect(Mailing.all()).to(eq([test_mailing]))
    end
  end

  describe('.clear') do
    it('empties out the array of mailings') do
    Mailing.new({:address => "420 SW Fort Wenty St. Apt.69", :city => "Burns", :state => "Oregon", :zip_code => "80085"})
    Mailing.clear
    expect(Mailing.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('ties an id to a specific mailing') do
    test_mailing = Mailing.new({:address => "420 SW Fort Wenty St. Apt.69", :city => "Burns", :state => "Oregon", :zip_code => "80085"})
    test_mailing.id
    expect(test_mailing.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds mailing based on id number') do
      test_mailing = Mailing.new({:address => "420 SW Fort Wenty St. Apt.69", :city => "Burns", :state => "Oregon", :zip_code => "80085"})
      test_mailing.save
      test_mailing2 = Mailing.new({:address => "422 SW Fort Wenty too St. Apt.70", :city => "Joseph", :state => "Oregon", :zip_code => "10075"})
      test_mailing2.save
      expect(Mailing.find(test_mailing.id())).to(eq(test_mailing))
    end
  end
end

    #
##### Specs for Phones class =========================>
    #

describe('Phone') do
  describe("#type, #area_code, #number") do
    it('returns the phone number info') do
      test_phone = Phone.new({:type => "Cell", :area_code => "420", :number => "4558008"})
      expect(test_phone.type()).to(eq("Cell"))
      expect(test_phone.area_code()).to(eq("420"))
      expect(test_phone.number()).to(eq("4558008"))
    end
  end

  describe('.all') do
    it('returns empty array') do
    expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('save information onto the empty array') do
    test_phone = Phone.new({:type => "Cell", :area_code => "420", :number => "4558008"})
    test_phone.save
    expect(Phone.all()).to(eq([test_phone]))
    end
  end

  describe('.clear') do
    it('empties out the array of phone numbers') do
    Phone.new({:type => "Cell", :area_code => "420", :number => "4558008"})
    Phone.clear
    expect(Phone.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('ties an id to a specific phone number') do
    test_phone = Phone.new({:type => "Cell", :area_code => "420", :number => "4558008"})
    test_phone.id
    expect(test_phone.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds phone number based on id number') do
      test_phone = Phone.new({:type => "Cell", :area_code => "420", :number => "4558008"})
      test_phone.save
      test_phone2 = Phone.new({:type => "Home", :area_code => "422", :number => "4206969"})
      test_phone2.save
      expect(Phone.find(test_phone.id())).to(eq(test_phone))
    end
  end
end

    #
##### Specs for Email class =========================>
    #

describe('Email') do
  describe("#type, #email_address") do
    it('returns the email info') do
      test_email = Email.new({:type => "Personal", :email_address => "nattyice4ev@bromail.com"})
      expect(test_email.type()).to(eq("Personal"))
      expect(test_email.email_address()).to(eq("nattyice4ev@bromail.com"))
    end
  end
  describe('.all') do
    it('returns empty array') do
    expect(Email.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('save information onto the empty array') do
    test_email = Email.new({:type => "Personal", :email_address => "nattyice4ev@bromail.com"})
    test_email.save
    expect(Email.all()).to(eq([test_email]))
    end
  end

  describe('.clear') do
    it('empties out the array of email addresses') do
    Email.new({:type => "Personal", :email_address => "nattyice4ev@bromail.com"})
    Email.clear
    expect(Email.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('ties an id to a specific email address') do
    test_email = Email.new({:type => "Personal", :email_address => "nattyice4ev@bromail.com"})
    test_email.id
    expect(test_email.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds email address based on id number') do
      test_email = Email.new({:type => "Personal", :email_address => "nattyice4ev@bromail.com"})
      test_email.save
      test_email2 = Email.new({:type => "Work", :email_address => "brollingrocks@bromail.com"})
      test_email2.save
      expect(Email.find(test_email.id())).to(eq(test_email))
    end
  end
end
