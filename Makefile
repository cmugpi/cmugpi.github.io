all:


install:
	_support/install

compass:
	compass watch

serve:
	jekyll serve --baseurl '' --watch

topic:
	_support/topic

lesson:
	_support/lesson

.PHONY: install compass serve lesson
