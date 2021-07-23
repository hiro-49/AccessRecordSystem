class RecordsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def record
  end
  
  def access
    idm = params(:idm)
    temperature = params(:temperature).to_f
    if(@member = Member.find_by(idm: idm))
      @record = Record.new(name: @member.name, number: @member.number, temperature: temperature)
      @record.save
      render text: @member.name
    else
      render text: 'Unregistered member'
    end
    
  end
end
