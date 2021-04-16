cd ./agraph-examples
# probably there's a better way to get this from the submodule TODO
git pull
cd ./data/bitcoin


# following instructions from here: https://github.com/franzinc/agraph-examples/tree/master/data/bitcoin

# assumes python3 already installed 
python3 -m venv .
source ./bin/activate
pip3 install wheel
pip3 install -r requirements.txt

# sends over tunneled port 10035 to docker container
# use the user and pass we set in the docker-compose when starting the agraph instance, `admin` and `pass`
# assumes we have a bitcoin server already running at 8332 with the provided credentials
./convert.py \
    --source=http://btcuser:btcpassword@localhost:8332 \
    --destination=http://admin:pass@localhost:10035 \
    --name=bitcoin \
    --workers=4 \
    --clear
