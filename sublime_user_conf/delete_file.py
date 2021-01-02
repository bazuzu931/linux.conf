import sublime, sublime_plugin
from Default.send2trash import send2trash

class delete_file(sublime_plugin.TextCommand):
	def run(self, edit):
		filePath = self.view.file_name()
		if(filePath):
			send2trash(filePath)
			self.view.close()

