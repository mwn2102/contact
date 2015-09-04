# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://contact-mwn2102.c9.io/rails/mailers/contact_mailer/new_contact
  def new_contact
    contact = Contact.last
    ContactMailer.new_contact(contact)
  end

end
