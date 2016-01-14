require('rspec')
require('contact')

describe('Contact') do
  describe("#first_name") do
    it('returns the contact info') do
      test_contact = Contact.new({:first_name => "Bob", :last_name => "McBob", :job_title => "Salesman", :company => "Jane's Car Shack"})
      expect(test_contact.first_name()).to(eq("Bob"))
      expect(test_contact.last_name()).to(eq("McBob"))
      expect(test_contact.job_title()).to(eq("Salesman"))
      expect(test_contact.company()).to(eq("Jane's Car Shack"))
    end
  end


end
