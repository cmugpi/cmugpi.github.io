
install:
	which gem &> /dev/null || { echo "Requires gem."; exit }
	gem install bundle
	which rbenv &> /dev/null && rbenv rehash
	bundle install

compass:
	compass watch

serve:
	octopress serve --watch

topic:
	_support/topic

lesson:
	_support/lesson

.PHONY: install compass serve lesson
