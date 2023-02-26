if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Azanpopz/John-cena /azanpopz
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /azanpopz
fi
cd /azanpopz
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
