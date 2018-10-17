import sublime
import sublime_plugin


# class run_phpunit(sublime_plugin.TextCommand):
# 	def run(self, edit):
# 		view = self.view.file_name()
# 		if view and view.file_name():
# 			command = "phpunit ."
# 			result = subprocess.call([command, view.file_name()], shell=True)
# 			if result != 0:
# 				view.set_status('run_phpunit', "run_phpunit: process %s launching error %d" % (command, result))
# 			else:
# 				view.set_status('run_phpunit', "run_phpunit: process launched...")
# 			sublime.set_timeout(self.clear,10000)
# 		else:
# 			sublime.error_message("No file to open!")


class run_phpunit(sublime_plugin.TextCommand):
	def run(self, edit):
		command = "phpunit ."
		result = subprocess.call([command, view.file_name()], shell=True)
		