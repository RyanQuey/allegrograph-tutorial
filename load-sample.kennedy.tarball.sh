BASEDIR=$(dirname "$0")

cd $BASEDIR/sample-data
if [ ! -d "$DIRECTORY" ]; then
      # Control will enter here if $DIRECTORY doesn't exist.
fi
# link provided from https://franz.com/agraph/support/documentation/current/server-installation.html#Tarball-cluster-installation
curl -LO https://franz.com/ftp/pri/acl/ag/ag7.1.0/linuxamd64.64/agraph-7.1.0-linuxamd64.64.tar.gz 
tar zxf agraph-7.1.0-linuxamd64.64.tar.gz 

cd $BASEDIR/sample-data/agraph-7.1.0/tutorial
