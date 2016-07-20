class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def params
    case self.class.name
    when 'User'
      {
        id: name
      }
    when 'Box'
      {
        id: name,
        user_id: user.name
      }
    when 'Version'
      {
        id: version,
        box_id: box.name,
        user_id: box.user.name
      }
    when 'Provider'
      {
        id: name,
        version_id: version.version,
        box_id: version.box.name,
        user_id: version.box.user.name
      }
    end
  end
end
