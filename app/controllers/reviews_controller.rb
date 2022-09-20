class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render template: "reviews/index"
  end

  def show
    @review = Review.find_by(id: params["id"])
    render template: "reviews/show"
  end

  def new
    @review = Review.new
    render template: "reviews/new"
  end

  def create
    @review = Review.create(
      reservation_id: params[:review][:reservation_id],
      rating: params[:review][:rating],
      comment: params[:review][:comment],
    )
    if @review.valid?
      render template: "reviews/show", status: 201
    else
      pp @review.errors.full_messages
      render json: { message: "There was an error.", errors: @review.errors.full_messages }, status: 422
    end
  end

  def edit
    @review = Review.find_by(id: params[:id])
    render template: "reviews/edit"
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.reservation_id = params[:review][:reservation_id]
    @review.rating = params[:review][:rating]
    @review.comment = params[:review][:comment]
    @review.save
    redirect_to "/reviews"
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    redirect_to "/reviews", status: :see_other
  end
end
