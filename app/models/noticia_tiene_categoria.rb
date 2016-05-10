class NoticiaTieneCategoria < ActiveRecord::Base
  belongs_to :noticia
  belongs_to :categoria
end
