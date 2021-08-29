class BooksController < InheritedResources::Base

  private

    def book_params
      params.require(:book).permit(:title, :status, :description, :status_date, :datetime, :internal_info)
    end

end
