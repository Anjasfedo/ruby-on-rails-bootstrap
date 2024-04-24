class DocumentsController < ApplicationController
    before_action :set_document, only: %i[show edit update destroy]

    # GET /documents or /documents.json
    def index
        @documents = Document.all
    end

    # GET /documents/1 or /documents/1.json
    def show
    end

    # GET /documents/new
    def new
        @document = Document.new
    end

    # GET /documents/1/edit
    def edit
    end

    # POST /documents or /documents.json
    def create
        @document = Document.new(document_params)

        respond_to do |format|
            if @document.save
                format.html do
                    redirect_to document_url(@document),
                                            notice: "Document was successfully created."
                end
                format.json { render :show, status: :created, location: @document }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json do
                    render json: @document.errors, status: :unprocessable_entity
                end
            end
        end
    end

    # PATCH/PUT /documents/1 or /documents/1.json
    def update
        respond_to do |format|
            if @document.update(document_params)
                format.html do
                    redirect_to document_url(@document),
                                            notice: "Document was successfully updated."
                end
                format.json { render :show, status: :ok, location: @document }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json do
                    render json: @document.errors, status: :unprocessable_entity
                end
            end
        end
    end

    # DELETE /documents/1 or /documents/1.json
    def destroy
        @document.destroy!

        respond_to do |format|
            format.html do
                redirect_to documents_url,
                                        notice: "Document was successfully destroyed."
            end
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_document
        @document = Document.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def document_params
        params.require(:document).permit(:title, :content)
    end
end
