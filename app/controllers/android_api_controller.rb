class AndroidApiController < ApplicationController
  
  def android_connect_user
    
  end

  def android_create_trip
  	#http://www.cuputt.com/android_api/android_create_trip?userid=1&lat=12.96&long=77.56&type=1&number=500c
  	@transport = Transport.new
  	@transport.user_id = params['userid'].to_i
  	@transport.transport_type_id = params['type'].to_i
  	@transport.number = params['number']
  	@transport.lat = params['lat']
  	@transport.long = params['long']
  	@transport.session = "active"
  	if @transport.save
        render :text => "true,#{@transport.id}"
    else
        render :text => "false"
    end
  end
  	
end
