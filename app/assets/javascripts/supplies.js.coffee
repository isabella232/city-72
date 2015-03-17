categories = [
	{ href: '#tab-essentials-content', contentSelector: '.tab-essentials-content', anchorSelector: '[href="#tab-essentials-content"]' }
	{ href: '#tab-useful-content', contentSelector: '.tab-useful-content', anchorSelector: '[href="#tab-useful-content"]' }
	{ href: '#tab-personal-content', contentSelector: '.tab-personal-content', anchorSelector: '[href="#tab-personal-content"]' }
]

sheet = 'https://docs.google.com/spreadsheets/d/1XuuxZGlRR9ujcJRu2yU07x-qKfnROiiSYzAdnwsOtiY'

$(document).ready ->

  $('a.pdf-languages-trigger').click ->
    $(this).toggleClass 'active'
    $('.download-languages').toggleClass 'active'

  $('.gs-action li').click (e) ->
    action = e.currentTarget.id.split('-')[1]
    if action == 'download'
      window.open sheet + '/export?gid=0&format=xlsx'
    else if action == 'clone'
      window.open sheet + '/copy?id=' + sheet.split('/').pop() + '&copyCollaborators=false&copyComments=false&usp=sheets_web'
    else if action == 'view'
      window.open sheet + '/edit?usp=sharing'
    else
      console.log 'invalid dropdown selection'

  $('.tab-useful-content').hide()
  $('.tab-personal-content').hide()

	showActive categories

window.onhashchange = -> showActive categories
