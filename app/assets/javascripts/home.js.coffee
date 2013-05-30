jQuery ->
  # Ajax search on submit
  $('#contacts_search').submit( ->
    $.get(this.action, $(this).serialize(), null, 'script')
    false
  )
  # Ajax search on keyup
  $('#contacts_search input').keyup( ->
    $.get($("#contacts_search").attr("action"), $("#contacts_search").serialize(), null, 'script')
    false
  )

