module ApplicationHelper
  def partial_name(thing)
    case thing.class.to_s
    when 'Post'
      return '/shared/show_post'
    when 'Entity'
      return thing.person? ? '/shared/show_person' : '/shared/show_organization'
    when 'Photo'
      return '/shared/show_photo'
    end
    nil # Shouldn't happen
  end
end
