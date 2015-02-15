class StatusesController < ApplicationController
  def index
  	@page = params[:page].to_i || 1
  	offset = (@page - 1) * 25
  	@statuses = Status.
  		order(created_at: :asc).
  		limit(25).offset(offset).all
  end

  def show
  end

  def new
  end
end
