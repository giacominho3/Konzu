import os, sys
from posix import read
import subprocess

RED = "\033[31m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
RESET = "\033[0m"
BLUE = "\033[34m"
MAGENTA = "\033[35m"
CYAN = "\033[36m"
WHITE = "\033[37m"

script_name = input( MAGENTA + "inserisci il nome dello script: " + RESET)
if os.path.isfile(script_name) == False :
    print(RED + "file does not exist" + RESET)
    exit()

if os.path.isdir("Cetus") :
    subprocess.run(['bash', '-c', 'rm -r Cetus'])

dir_name = "verify_folder"
os.makedirs(dir_name, exist_ok=True)

# Creazione dei file all'interno della directory
for i in range(1, 11):
    file_name = f"file{i}"
    file_path = os.path.join(dir_name, file_name)
    with open(file_path, 'w') as file:
        pass

subprocess.run(['bash', script_name])

out = subprocess.run(['bash', '-c', 'diff Cetus/ verify_folder/'], capture_output=True)

if out.returncode == 0 :
    print(GREEN + "script is correct" + RESET)

    # cambiare il nome
    new_folder_path = "../San_Pietro_bot/"

    # cambiare la repo
    url_repository = "https://github.com/giacominho3/San_Pietro_bot.git"

    try:
        comando_clone = ["git", "clone", url_repository, new_folder_path]
        subprocess.run(comando_clone, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        print(GREEN + "Livello completato con successo!" + RESET)
        print("Troverai il prossimo livello in " + MAGENTA + new_folder_path + RESET)
    except subprocess.CalledProcessError as e:
        print(RED + "Errore durante il cloning del repository: " + e + RESET)
else :
    print(RED + "script is incorrect :(" + RESET)

if os.path.isdir("verify_folder") :
    subprocess.run(['bash', '-c', 'rm -r verify_folder'])
