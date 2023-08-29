from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

ga = GoogleAuth()

ga.LocalWebserverAuth()
drive = GoogleDrive(ga)

file = drive.CreateFile()
file.SetContentFile('bicimoto.tar')
file.Upload()

