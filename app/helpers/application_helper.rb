module ApplicationHelper
  def show_mood
    return 'Happy' if happy?

    'Sad'
  end
end
