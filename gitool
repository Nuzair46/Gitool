#!/usr/bin/env python3
import os, sys
import json

datafile = f"{os.path.dirname(os.path.realpath(__file__))}/data.json"

def get_auth_url(user):
    pat = get_pat(user)
    fetch_url = os.popen(f'git remote show origin -n | grep "Fetch URL:"').read()
    trimmed_fetch_url = fetch_url.replace("Fetch URL: https://","").strip()
    url = f"https://{pat}:{pat}@{trimmed_fetch_url}"
    return url

def get_pat(user):
    with open(datafile,"r") as data:
        content = json.load(data)
    
    try:
        pat = content[user]
        return pat
    except KeyError:
        print("\nUnknown user. Check username or add new user with adduser command.\n")
        exit()

def perform(mode):
    auth_url = get_auth_url(user)
    ex_arg = "--all" if mode == "push" else ""
    os.system(f"git {mode} {auth_url} {ex_arg}")

def set_pat(user, token):
    with open(datafile,"r") as data:
        content = json.load(data)

    content[user] = token
        
    with open("data.json","w") as data:
        json.dump(content, data, indent = 4)

def arg_error(err = None):
    print('''Missing arguments 
Usage:  gitool push/pull [user]
        gitool adduser [user] [token]
''')
    if err == "token":
        print("Token missing for adduser.")
    exit()

if __name__ == '__main__':
    arg_length = len(sys.argv)
    try:
        mode = sys.argv[1]
        user = sys.argv[2]
    except Exception:
        arg_error()
    
    if mode not in ["pull","push","adduser"]:
        arg_error()
    
    if mode == "adduser":
        try:
            token = sys.argv[3]
        except Exception:
            arg_error("token")
        
        set_pat(user, token)
    else:
        perform(mode)