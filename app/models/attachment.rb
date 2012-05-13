  belongs_to :attachable, :polymorphic => true
  attr_accessible :description, :file, :title, :topo
  mount_uploader :file, FileUploader

  validates :file,
    :file_size => {
      :maximum => 3.megabytes.to_i
    }

  before_save :image_dimensions

  def image_dimensions
    geometry = self.file.best.geometry
    if (!geometry.nil?)
      self.width = geometry[0]
      self.height = geometry[1]
    end
  end

