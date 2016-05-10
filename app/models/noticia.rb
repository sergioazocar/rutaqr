class Noticia < ActiveRecord::Base
	def self.search(search)
	    if search
	      Noticia.where("titulo ILIKE ?", "%#{search}%")
	    else
	      Noticia.all
	    end
	end

	after_create :update_slug
	before_update :assign_slug

	def to_param
		slug
	end

	private

	def assign_slug
		self.slug = "#{titulo.parameterize}"
	end

	def update_slug
		update_attributes slug: assign_slug
	end
end
