class Post < ActiveRecord::Base

  validates_presence_of :title, :body

  before_save :parse




  protected

  def parse
    markdown = Redcarpet::Markdown.new( Redcarpet::Render::HTML.new(:hard_wrap => true),
                                       extensions = {
                                           :hard_wrap => true,
                                           :no_intra_emphasis => true,
                                           :autolink => true,
                                           :fenced_code_blocks => true })

    self.html = Redcarpet::Render::SmartyPants.render(
        pygment( markdown.render( body)).to_s)
  end


  def pygment(markdown_body)
    require 'net/http'
    require 'uri'

    doc = Nokogiri::HTML(markdown_body)
    doc.search('pre > code[class]').each do |code|
      request = Net::HTTP.post_form(URI.parse('http://pygments.appspot.com/'), { 'lang' => code[:class], 'code' => code.text.rstrip })
      code.parent.replace request.body
    end

    doc.to_s

  end

end
