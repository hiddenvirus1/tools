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

# Check if the tools directory exists, and create it if it doesn't
if [ ! -d "$TOOLS_DIR" ]; then
    echo -e "\e[1;92mCreating tools directory...\e[0m"
    mkdir "$TOOLS_DIR"
else
    echo -e "$yellow tools Directory Is Already Created\e[0m"
fi

# Navigate to the tools directory
cd "$TOOLS_DIR"

################## Apt ##################
echo -e "$green  Updating...\e[0m"
sudo apt -qq update -y && sudo apt -qq upgrade -y

# subfinder
if command -v subfinder &> /dev/null; then
    echo -e "$green subfinder: $yellow installed\e[0m"
else
    echo -e "$green subfinder: $red installing..\e[0m"
    sudo apt install subfinder >/dev/null 2>&1
fi

# sublist3r
if command -v sublist3r &> /dev/null; then
    echo -e "$green sublist3r: $yellow installed\e[0m"
else
    echo -e "$green sublist3r: $red installing..\e[0m"
    sudo apt install sublist3r >/dev/null 2>&1
fi

# dirsearch
if command -v dirsearch &> /dev/null; then
    echo -e "$green dirsearch: $yellow installed\e[0m"
else
    echo -e "$green dirsearch: $red installing..\e[0m"
    sudo apt install dirsearch >/dev/null 2>&1
fi

# Amass
if command -v amass &> /dev/null; then
    echo -e "$green amass: $yellow installed\e[0m"
else
    echo -e "$green amass: $red installing..\e[0m"
    sudo apt install amass >/dev/null 2>&1
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

# gmapsapiscanner
if [ ! -d "gmapsapiscanner" ]; then
    echo -e "$green gmapsapiscanner: is $red Not Found\e[0m"
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
echo -e "\n\e[1;92m   Finished!!!\e[0m"
