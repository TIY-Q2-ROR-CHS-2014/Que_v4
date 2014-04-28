module QuesHelper
  def display_links(person)
    if person.workflow_state == 'new'
      link_to "Help This Student", help_student_que_path(person), method: :patch
    elsif person.workflow_state == 'in_progress'
      a = link_to "Resolve", resolve_student_que_path(person), method: :patch
      a += ' | '
      a += link_to "Still Confused", try_helping_student_que_path(person), method: :patch
      a
    elsif person.workflow_state == 'still_confused'
      link_to "Re Help", help_student_que_path(person), method: :patch
    end
  end
end
