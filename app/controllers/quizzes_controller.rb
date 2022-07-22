class QuizzesController < ApplicationController
   include Secured

   def index
      render json: Quiz.all
   end

   def create
      pp params
      quiz = Quiz.create(create_params)

      render json: quiz
   end

   private

   def create_params
      params.permit(:title, :questions)
   end
end
