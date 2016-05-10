class Directorio < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :usuario

  def self.search(search)
    if search
      Directorio.where("nombre ILIKE ?", "%#{search}%")
    else
      Directorio.all
    end
  end

  after_create :update_slug
	before_update :assign_slug

	def to_param
		slug
	end

	private

	def assign_slug
		self.slug = "#{nombre.parameterize}"
	end

	def update_slug
		update_attributes slug: assign_slug
	end
end
