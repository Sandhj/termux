mkdir -p cf
mkdir -p sc

cd cf
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/cf/cf-manager.py
cd
cd sc
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/sc/sc-installer.py

cd
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/run_cf.sh
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/run_sc.sh

{
  echo "*/1 * * * * bash ~/run_cf.sh"
  echo "*/1 * * * * bash ~/run_sc.sh"
} | crontab -
