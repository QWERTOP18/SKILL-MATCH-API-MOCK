class EngineerTypesController < ApplicationController
  def index
    @engineer_types = EngineerType.all
    render json: @engineer_types
  end

  def show
    @engineer_type = EngineerType.find(params[:id])
    render json: @engineer_type
  end

  def create
    @engineer_type = EngineerType.new(engineer_type_params)
    if @engineer_type.save
      render json: @engineer_type, status: :created
    else
      render json: @engineer_type.errors, status: :unprocessable_entity
    end
  end

  def update
    @engineer_type = EngineerType.find(params[:id])
    if @engineer_type.update(engineer_type_params)
      render json: @engineer_type
    else
      render json: @engineer_type.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @engineer_type = EngineerType.find(params[:id])
    @engineer_type.destroy
    head :no_content
  end

  private

  def engineer_type_params
    params.require(:engineer_type).permit(:name, :description, :technical_skill, :problem_solving_ability, :communication_skill, :security_awareness, :leadership_and_collaboration, :learning_and_adaptability)
  end
end
