if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Royalbot07/TitanFilter-Bot.git /TitanFilter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TitanFilter-Bot
fi
cd /TitanFilter-Bot
pip3 install -U -r requirements.txt
echo "Starting TitanFilter-Bot...."
python3 bot.py
