module Students

  class SemisterPresenter

    def semisters
      Semister.where("is_active = ?",true)
    end
  end

end