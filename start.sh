if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iwhiwh/sendallfiles /sendallfiles
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /sendallfiles
fi
cd /LastBot
pip3 install -U -r requirements.txt
echo "Starting BOT...."
python3 bot.py
