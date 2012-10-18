class SourcesController < ApplicationController
  # GET /sources
  # GET /sources.json

  #muestra solo las citas de un autor basándose en su user_id
  def index
    #se asigna la variable a todos las fuentes que sean del autor logueado
    @sources = Source.where(["user_id = ?", session[:user_id]]).all
    respond_to do |format|
      format.html # index.html.erb
		#para generar un archivo .pdf      
      format.pdf do
            render :pdf => "APA References",
                   :template => 'sources/index.html.erb'

    		end
      format.json { render json: @sources }
    end
  end

  # GET /sources/1
  # GET /sources/1.json
  def show
    @source = Source.find(params[:id])
    
    if (@source.user_id == session[:user_id])
       respond_to do |format|
         format.html # show.html.erb
         #para generar un archivo .pdf
         format.pdf do
            render :pdf => "APA References",
                   :template => 'sources/show.html.erb'

    		end
         format.json { render json: @source }
       end
    else
	flash[:error] = "You don't have permission to access that."
	redirect_to root_url # halts request cycle
    end
  end

  # GET /sources/new
  # GET /sources/new.json
  def new
    @source = Source.new
    @userId = session[:user_id]
    @source.ref_type = params[:type]
    @ref_type = params[:type]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @source }
    end
  end

  # GET /sources/1/edit
  def edit
	@source = Source.find(params[:id])
	#Si la fuente no pertenece al usuario que está haciendo la solicitud
	#se le envía un mensaje de error y se le dirige a la página principal
	if (@source.user_id == session[:user_id])
		@userId = session[:user_id]
	else
		flash[:error] = "You don't have permission to access that."
		redirect_to root_url # halts request cycle
	end
  end

  # POST /sources
  # POST /sources.json
  def create
    @source = Source.new(params[:source])

	@month = Source.mes(@source.pub_month)
    if (@source.pub_year !=  nil and @source.pub_month != nil and @source.pub_day == 1)
    		@source.pub_date = "#{@month} #{@source.pub_day} #{@source.pub_year}"
    elsif (@source.pub_year != nil and (@source.pub_month != nil  or @source.pub_day == nil))
    		@source.pub_date = "#{@month} #{@source.pub_year}"
    elsif (@source.pub_year != nil and (@source.pub_month == nil  or @source.pub_day == nil))
    		@source.pub_date = "#{@source.pub_year}"    
    else
    		@source.pub_date = "s.f"
    end
    @month2 = Source.mes(@source.ref_month)
    @source.ref_date = "#{@month2} #{@source.ref_day} #{@source.ref_year}"
    
    respond_to do |format|
      if @source.save
        format.html { redirect_to @source, notice: 'Source was successfully created.' }
        format.json { render json: @source, status: :created, location: @source }
      else
        format.html { render action: "new" }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sources/1
  # PUT /sources/1.json
  def update
    @source = Source.find(params[:id])

    respond_to do |format|
      if @source.update_attributes(params[:source])
        format.html { redirect_to @source, notice: 'Source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sources/1
  # DELETE /sources/1.json
  def destroy
    @source = Source.find(params[:id])
    @source.destroy

    respond_to do |format|
      format.html { redirect_to sources_url }
      format.json { head :no_content }
    end
  end
end
