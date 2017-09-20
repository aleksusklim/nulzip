:st
@set /p FOLDER=Folder:
@if not exist %FOLDER% @goto :st
@set /p ZIP=Target.zip:
nulzip.exe %FOLDER% %ZIP%


