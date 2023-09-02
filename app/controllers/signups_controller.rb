class SignupsController < ApplicationController

    def create
        signup = Signup.create!(signups_params)
        render json: signup, include: {activity: {only: [:id, :name, :difficulty]}}, only: [:time, :camper_id, :activity_id], status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: {errors: ["validation errors"]}, status: :unprocessable_entity
    end

    private

    def signups_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
