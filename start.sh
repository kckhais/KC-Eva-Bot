if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kckhais/KC-Eva-Bot.git /KC-Eva-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KC-Eva-Bot
fi
cd /KC-Eva-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
