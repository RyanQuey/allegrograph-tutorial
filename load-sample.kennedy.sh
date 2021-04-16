BASEDIR=$(dirname "$0")
container_name=allegrograph-tutorial_allegrograph_1

# check data exists
echo "What all are the sample data files we have available here?"
docker exec $container_name  ls -l /agraph/tutorial

# load into our program
echo "loading kennedy data..."
docker exec $container_name agtool load mykennedy /agraph/tutorial/kennedy.ntriples


