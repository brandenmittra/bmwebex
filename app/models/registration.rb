class Registration

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :fname, :lname, :email, :job

  validates :fname, :lname, :email, :job, :presence => true

  VALID_EMAILS = %w(bayer.com rockmedcomms.com streamingwell.com)

  validates_format_of :email,
  :with => /#{VALID_EMAILS.map{|a| Regexp.quote(a)}.join('|')}/,
  :message => "Please login using your work email address."
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end