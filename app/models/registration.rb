class Registration

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :fname, :lname, :email, :job

  validates :fname, :lname, :email, :job, :presence => true

  INVALID_EMAILS = %w(virginmedia.com ee.co.uk plus.net aol.com aol.co.uk sky.com tiscali.co.uk btinternet.com gmail.com googlemail.com hotmail.co.uk hotmail.com live.co.uk yahoo.com yahoo.co.uk yahoo.gr yahoo.fr outlook.com outlook.co.uk icloud.com ymail.com mail.com bigstring.com talktalk.co.uk )

  validates_format_of :email,
  :without => /#{INVALID_EMAILS.map{|a| Regexp.quote(a)}.join('|')}/,
  :message => "Please register using your work email address."
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end