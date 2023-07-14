#!/bin/bash
green="\e[0;92m"
red="\e[1;91m"
yellow="\e[1;93m"

# Set variables for directory names
TOOLS_DIR="$HOME/Desktop/tools"

echo -e """

___________           .__          
\__    ___/___   ____ |  |   ______
  |    | /  _ \ /  _ \|  |  /  ___/
  |    |(  <_> |  <_> )  |__\___ \ 
  |____| \____/ \____/|____/____  >
                                \/ 

"""

# Check if the directory exists, and if not, create it
if [ ! -d "$TOOLS_DIR" ]; then
    echo -e "$green Creating tools directory...\e[0m"
    mkdir "$HOME/Desktop"
    mkdir "$HOME/Desktop/tools"
else
    echo -e "$yellow tools Directory Is Already Created\e[0m"
fi

# Navigate to the tools directory
cd "$TOOLS_DIR"

################## Apt ##################
echo -e " $ Update your system with \e[1;93msudo apt update -y && sudo apt upgrade -y\e[0m before using this tool."
echo -e "$green  Working...\e[0m"
#sudo apt install python3-venv -y >/dev/null 2>&1
#python3 -m venv myenv

# golang
if command -v go &> /dev/null; then
    echo -e "$green golang: $yellow Installed\e[0m"
else
    echo -e "$green golang: $red Installing..\e[0m"
    sudo apt install golang -y >/dev/null 2>&1
fi

# subfinder
if command -v subfinder &> /dev/null; then
    echo -e "$green subfinder: $yellow Installed\e[0m"
else
    echo -e "$green subfinder: $red Installing..\e[0m"
    sudo apt install subfinder -y >/dev/null 2>&1
fi

# sublist3r
if command -v sublist3r &> /dev/null; then
    echo -e "$green sublist3r: $yellow Installed\e[0m"
else
    echo -e "$green sublist3r: $red Installing..\e[0m"
    sudo apt install sublist3r -y >/dev/null 2>&1
fi

# dirsearch
if command -v dirsearch &> /dev/null; then
    echo -e "$green dirsearch: $yellow Installed\e[0m"
else
    echo -e "$green dirsearch: $red Installing..\e[0m"
    sudo apt install dirsearch -y >/dev/null 2>&1
fi

# Amass
if command -v amass &> /dev/null; then
    echo -e "$green amass: $yellow Installed\e[0m"
else
    echo -e "$green amass: $red Installing..\e[0m"
    sudo apt install amass -y >/dev/null 2>&1
fi

##################### pip #####################
# xsstrike
if command -v xsstrike &> /dev/null; then
    echo -e "$green xsstrike: $yellow Installed\e[0m"
else
    echo -e "$green xsstrike: $red Installing..\e[0m"
    pip3 install xsstrike >/dev/null 2>&1
fi

################## github.com ##################
# Breacher
if [ ! -d "Breacher" ]; then
    echo -e "$green Breacher: $red Installing\e[0m"
    git clone https://github.com/s0md3v/Breacher.git >/dev/null 2>&1
else
    echo -e "$green Breacher: $yellow Installed. Updating...\e[0m"
    cd "Breacher"
    git pull >/dev/null 2>&1
    cd ..
fi

# PwnXSS
if [ ! -d "PwnXSS" ]; then
    echo -e "$green PwnXSS: $red Installing\e[0m"
    git clone https://github.com/pwn0sec/PwnXSS.git >/dev/null 2>&1
else
    echo -e "$green PwnXSS: $yellow Installed. Updating...\e[0m"
    cd "PwnXSS"
    git pull >/dev/null 2>&1
    cd ..
fi

# gmapsapiscanner
if [ ! -d "gmapsapiscanner" ]; then
    echo -e "$green gmapsapiscanner: $red Installing\e[0m"
    git clone https://github.com/ozguralp/gmapsapiscanner.git >/dev/null 2>&1
else
    echo -e "$green gmapsapiscanner: $yellow Installed. Updating...\e[0m"
    cd "gmapsapiscanner"
    git pull >/dev/null 2>&1
    cd ..
fi

# bypasser
if [ ! -d "bypasser" ]; then
    echo -e "$green bypasser: $red Installing\e[0m"
    git clone https://github.com/hiddenvirus1/bypasser.git >/dev/null 2>&1
else
    echo -e "$green bypasser: $yellow Installed. Updating...\e[0m"
    cd "bypasser"
    git pull >/dev/null 2>&1
    cd ..
fi

# CloudFlair
if [ ! -d "CloudFlair" ]; then
    echo -e "$green CloudFlair: $red Installing\e[0m"
    git clone https://github.com/christophetd/CloudFlair.git >/dev/null 2>&1
else
    echo -e "$green CloudFlair: $yellow Installed. Updating...\e[0m"
    cd "CloudFlair"
    git pull >/dev/null 2>&1
    cd ..
fi

# Crawl
if [ ! -d "crawl" ]; then
    echo -e "$green crawl: $red Installing\e[0m"
    git clone https://github.com/hiddenvirus1/crawl.git >/dev/null 2>&1
else
    echo -e "$green crawl: $yellow Installed. Updating...\e[0m"
    cd "crawl"
    git pull >/dev/null 2>&1
    cd ..
fi

# links
if [ ! -d "links" ]; then
    echo -e "$green links: $red Installing\e[0m"
    git clone https://github.com/hiddenvirus1/links.git >/dev/null 2>&1
else
    echo -e "$green links: $yellow Installed. Updating...\e[0m"
    cd "links"
    git pull >/dev/null 2>&1
    cd ..
fi

# wordlist
if [ ! -d "SecLists" ]; then
    echo -e "$green SecLists: $red Installing\e[0m"
    git clone https://github.com/danielmiessler/SecLists.git >/dev/null 2>&1
else
    echo -e "$green SecLists: $yellow Installed. Updating...\e[0m"
    cd "SecLists"
    git pull >/dev/null 2>&1
    cd ..
fi

################## golang ##################
echo -e "$green httpx: $yellow Done"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest >/dev/null 2>&1
echo -e "$green httprobe: $yellow Done"
go install github.com/tomnomnom/httprobe@latest >/dev/null 2>&1
echo -e "$green subzy: $yellow Done"
go install -v github.com/LukaSikic/subzy@latest >/dev/null 2>&1
echo -e "$green waybackurls: $yellow Done"
go install github.com/tomnomnom/waybackurls@latest >/dev/null 2>&1
echo -e "$green dnsx: $yellow Done"
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest >/dev/null 2>&1
echo -e "$green dalfox: $yellow Done"
go install github.com/hahwul/dalfox/v2@latest >/dev/null 2>&1
echo -e "$green gf: $yellow Done"
go install -v github.com/tomnomnom/gf@latest >/dev/null 2>&1
echo -e "$green qsreplace: $yellow Done"
go install github.com/tomnomnom/qsreplace@latest >/dev/null 2>&1
echo -e "$green anew: $yellow Done"
go install -v github.com/tomnomnom/anew@latest >/dev/null 2>&1

################## configuration ##################
#echo "source ~/Desktop/tools/myenv/bin/activate" >> ~/.profile
echo 'export GOPATH=$HOME/go\nexport PATH=$PATH:$GOPATH/bin\nexport PATH=$PATH:$GOPATH/bin:/usr/local/go/bin' >> ~/.profile
echo "source ~/.profile" >> ~/.zshrc
echo "source ~/.profile" >> ~/.bashrc
source ~/.profile

################## Finished ##################
echo -e "\n\e[1;92m [✔] installation Complete\e[0m"
echo -e " Tools Installed in \e[1;94m$HOME/Desktop/tools\e[0m Directory"
