class ErrorsController < ApplicationController
  def show
    @code = params[:code].to_i
    render 'errors/show.json'
  end
end
