class ProjectPage < ApplicationRecord
  has_rich_text :project_content

  validates :project_id, presence: true
end
