class CommentCell < Cell::ViewModel
  def show
    "Hello! I feel #{model.name}"
  end
end