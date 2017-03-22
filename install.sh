echo "Installing Python depencies"
sudo pip install -r requirements.txt
echo "Installing Linux depencies"
bash provision/provision.sh
echo "Installing NCBI"
bash ncbi/install

cd src
python manage.py migrate
python manage.py build_blastdb
