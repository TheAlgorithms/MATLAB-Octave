% Changes current working directory to Desktop
function workfolder
path = getenv('USERPROFILE') + "\Desktop"
chdir(path)
end
