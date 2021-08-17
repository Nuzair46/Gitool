# Gitool  

A script to easily push and pull github repo's without having to input access tokens all the time.

### Installation

>    1. Run: `chmod +x install.sh`
>            `./install.sh`
>    2. Add `export PATH="$HOME/bin/gitool:$PATH"` to ~/.zshrc or ~/.bashrc
>    3. Restart terminal.  

### To Run

* Initial Setup:
    * Run: `gitool adduser [username] [your_personal_access_token]`

* Push:
    * `gitool push [username]`

* Pull:
    * `gitool pull [username]`

# Important Note:

* Currently there is no encryption in this script, So be careful of people using your system.  
