class ClientsController < ApplicationController
  include ClientsHelper
  def index
    @clients = Client.all
  end

  def update
    @generator = request.parameters[:client].slice(:generate)
    @documentor = request.parameters[:client].slice(:document)
    @client = Client.find(params[:id])
    # binding.pry
    if @generator.values.include?("on")
      mardown_generator
    end

    if @documentor.values.include?("on")
      mardown_generator
      word_documentor
    end

    @client.update!(request.parameters[:client]
      .slice(:name, :business, :address, :worker, :nature, :work_type, :signatory, :title))
    flash[:success] = "Documents Successfully Generated for #{@client.name}"
    redirect_to action: "index"
  end

  private

  def word_documentor
    file_names = ['MSA', 'RSA']
    file_names.each do |file_name|
      system "pandoc tmp/docs/#{file_name}_#{@client.name.parameterize}.md --reference-doc lib/templates/des.docx -f markdown -t docx -o tmp/docs/#{file_name}_#{@client.name.parameterize}.docx && open tmp/docs/#{file_name}_#{@client.name.parameterize}.docx"
    end
  end

  def mardown_generator
    file_names = ['MSA', 'RSA']
    date = Time.now.strftime("%d of %B, %Y")
    file_names.each do |file_name|

      text = File.read Rails.root.join('lib', 'templates', "#{file_name}.md")

      text.gsub!("$name$", @client.name)
      text.gsub!("$business$", @client.business)
      text.gsub!("$address$", @client.address)
      text.gsub!("$worker$", @client.worker)
      text.gsub!("$nature$", @client.nature)
      text.gsub!("$signatory$", @client.signatory)
      text.gsub!("$title$", @client.title)
      text.gsub!("$services$", @client.services)
      text.gsub!("$payments$", @client.payments)
      text.gsub!("$business_type$", @client.business_type)
      text.gsub!("$breach_period$", @client.breach_period)
      text.gsub!("$breach_words$", in_words(@client.breach_period.to_i))
      text.gsub!("$expense$", @client.expense)
      text.gsub!("$notes$", @client.notes)
      text.gsub!("$work_type$", @client.work_type)

      text.gsub!("$date$", date)

      File.open(Rails.root.join('tmp', 'docs', "#{file_name}_#{@client.name.parameterize}.md"), "w") {|file| file.puts text }
    end
  end
end
