module ApplicationHelper
  def model_select(f, model)
    f.collection_select("#{model.class.name.downcase}_id".to_sym, model.all, :id, :name)
  end
end
