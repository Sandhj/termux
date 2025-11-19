mkdir -p cf
mkdir -p sc

cd cf
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/cf/cf-manager.py
cd
cd sc
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/sc/sc-installer.py
cd
cd jam-dg
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/jam-dg/server.py
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/jam-dg/index.html

cd
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/run_cf.sh
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/run_sc.sh
wget -q https://raw.githubusercontent.com/Sandhj/termux/main/run_jam-dg.sh

{
  echo "*/1 * * * * bash ~/run_cf.sh"
  echo "*/1 * * * * bash ~/run_sc.sh"
  echo "*/5 * * * * bash ~/run_jam-dg.sh"
} | crontab -

crond
