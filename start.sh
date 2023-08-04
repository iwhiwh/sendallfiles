if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Apnamovi/LastBot.git /LastBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LastBot
fi
cd /LastBot
pip3 install -U -r requirements.txt
echo "Starting BOT...."
python3 bot.py
