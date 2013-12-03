class StaticPagesController < ApplicationController
  def home
  end

  def resume
    pdf_filename = File.join(Rails.root, "app/assets/images/resume.pdf")
    send_file(pdf_filename, :filename => "resume.pdf", :disposition => 'inline', :type => "application/pdf")
  end

  def references
    pdf_filename = File.join(Rails.root, "app/assets/images/references.pdf")
    send_file(pdf_filename, :filename => "references.pdf", :disposition => 'inline', :type => "application/pdf")
  end

end
