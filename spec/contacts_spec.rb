require('rspec')
require('contact')

describe('Contact') do
  describe("#first_name") do
    it('returns the first name of the contact') do
      test_contact = Contact.new({:first_name => "Bob", :last_name => "McBob", :job_title => "Salesman", :company => "Jane's Car Shack"})
      expect(test_contact.first_name()).to(eq("Bob"))
    end

  end


end
