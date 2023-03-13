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
    mkdir "$TOOLS_DIR"
else
    echo -e "$yellow tools Directory Is Already Created\e[0m"
fi

# Navigate to the tools directory
cd "$TOOLS_DIR"

################## Apt ##################
echo -e " $ Update your system with \e[1;93msudo apt update -y && sudo apt upgrade -y\e[0m before using this tool."
echo -e "$green  Working...\e[0m"
sudo apt install python3-venv -y >/dev/null 2>&1
python3 -m venv myenv
echo "source ~/Desktop/tools/myenv/bin/activate" >> ~/.profile
echo 'export GOPATH=$HOME/go\nexport PATH=$PATH:$GOPATH/bin\nexport PATH=$PATH:$GOPATH/bin:/usr/local/go/bin' >> ~/.profile
echo "source ~/.profile" >> ~/.zshrc
echo "source ~/.profile" >> ~/.bashrc
source ~/.profile

# golang
if command -v go &> /dev/null; then
    echo -e "$green golang: $yellow installed\e[0m"
else
    echo -e "$green golang: $red installing..\e[0m"
    sudo apt install golang -y >/dev/null 2>&1
fi

# subfinder
if command -v subfinder &> /dev/null; then
    echo -e "$green subfinder: $yellow installed\e[0m"
else
    echo -e "$green subfinder: $red installing..\e[0m"
    sudo apt install subfinder -y >/dev/null 2>&1
fi

# sublist3r
if command -v sublist3r &> /dev/null; then
    echo -e "$green sublist3r: $yellow installed\e[0m"
else
    echo -e "$green sublist3r: $red installing..\e[0m"
    sudo apt install sublist3r -y >/dev/null 2>&1
fi

# dirsearch
if command -v dirsearch &> /dev/null; then
    echo -e "$green dirsearch: $yellow installed\e[0m"
else
    echo -e "$green dirsearch: $red installing..\e[0m"
    sudo apt install dirsearch -y >/dev/null 2>&1
fi

# Amass
if command -v amass &> /dev/null; then
    echo -e "$green amass: $yellow installed\e[0m"
else
    echo -e "$green amass: $red installing..\e[0m"
    sudo apt install amass -y >/dev/null 2>&1
fi

##################### pip #####################
# xsstrike
if command -v xsstrike &> /dev/null; then
    echo -e "$green xsstrike: $yellow installed\e[0m"
else
    echo -e "$green xsstrike: $red installing..\e[0m"
    pip3 install xsstrike >/dev/null 2>&1
fi

################## github.com ##################
# Breacher
if [ ! -d "Breacher" ]; then
    echo -e "$green Breacher: $red Not Found\e[0m"
    git clone https://github.com/s0md3v/Breacher.git >/dev/null 2>&1
else
    echo -e "$green Breacher: $yellow Found. Updating...\e[0m"
    cd "Breacher"
    git pull >/dev/null 2>&1
    cd ..
fi

# PwnXSS
if [ ! -d "PwnXSS" ]; then
    echo -e "$green PwnXSS: $red Not Found\e[0m"
    git clone https://github.com/pwn0sec/PwnXSS.git >/dev/null 2>&1
else
    echo -e "$green PwnXSS: $yellow Found. Updating...\e[0m"
    cd "PwnXSS"
    git pull >/dev/null 2>&1
    cd ..
fi

# gmapsapiscanner
if [ ! -d "gmapsapiscanner" ]; then
    echo -e "$green gmapsapiscanner: $red Not Found\e[0m"
    git clone https://github.com/ozguralp/gmapsapiscanner.git >/dev/null 2>&1
else
    echo -e "$green gmapsapiscanner: $yellow Found. Updating...\e[0m"
    cd "gmapsapiscanner"
    git pull >/dev/null 2>&1
    cd ..
fi

# bypass-403
if [ ! -d "bypass-403" ]; then
    echo -e "$green bypass-403: $red Not Found\e[0m"
    git clone https://github.com/iamj0ker/bypass-403.git >/dev/null 2>&1
else
    echo -e "$green bypass-403: $yellow Found. Updating...\e[0m"
    cd "bypass-403"
    git pull >/dev/null 2>&1
    cd ..
fi

# CloudFlair
if [ ! -d "CloudFlair" ]; then
    echo -e "$green CloudFlair: $red Not Found\e[0m"
    git clone https://github.com/christophetd/CloudFlair.git >/dev/null 2>&1
else
    echo -e "$green CloudFlair: $yellow Found. Updating...\e[0m"
    cd "CloudFlair"
    git pull >/dev/null 2>&1
    cd ..
fi

# Crawl
if [ ! -d "crawl" ]; then
    echo -e "$green crawl: $red Not Found\e[0m"
    git clone https://github.com/hiddenvirus1/crawl.git >/dev/null 2>&1
else
    echo -e "$green crawl: $yellow Found. Updating...\e[0m"
    cd "crawl"
    git pull >/dev/null 2>&1
    cd ..
fi

# links
if [ ! -d "links" ]; then
    echo -e "$green links: $red Not Found\e[0m"
    git clone https://github.com/hiddenvirus1/links.git >/dev/null 2>&1
else
    echo -e "$green links: $yellow Found. Updating...\e[0m"
    cd "links"
    git pull >/dev/null 2>&1
    cd ..
fi

# wordlist
if [ ! -d "WordLists-20111129" ]; then
    echo -e "$green WordLists-20111129: $red Not Found\e[0m"
    git clone https://github.com/emadshanab/WordLists-20111129.git >/dev/null 2>&1
else
    echo -e "$green WordLists-20111129: $yellow Found. Updating...\e[0m"
    cd "WordLists-20111129"
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

################## Finished ##################
echo -e "\n\e[1;92m [✔] Installation Complete\e[0m"
echo -e " Tools installed in \e[1;94m$HOME/Desktop/tools\e[0m Directory"
