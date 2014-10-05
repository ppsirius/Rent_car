class ClientsController < ApplicationController
	before_action :set_client, only: [:show, :edit, :destroy]

  def index
    sort_by = params[:sort_by]


    @clients = if sort_by
      Client.order(sort_by)
    else
      Client.all
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end

  def edit
  end

  def new
  	@client = Client.new
  end

  def create
		@client = Client.new(client_params)
		if @client.save
			redirect_to @client, notice: 'Klient został prawidłowo dodany'
		else
			render :new
		end
	end

	def update
		if @client.update(client_params)
			redirect_to @client, notice: 'Klient został prawidłowo zaktualizowany'
		else
		render :edit
		end
	end

	def destroy
		@client.destroy
		redirect_to clients_url, notice: 'Klient został usunięty'
	end

private

	def set_client
		@client = Client.find(params[:id])
	end

	def client_params
		params.require(:client).permit(:name, :surname, :age, :doc_type, :doc_number)
	end

end
