mvn package -DskipTests -Pshade
rm -rf build
mkdir -p build/sql-code-intelligence-0.1.0
cp  target/sql-code-intelligence-0.1.0.jar build/sql-code-intelligence-0.1.0
cp -r config  build/sql-code-intelligence-0.1.0
cp dev/start.sh build/sql-code-intelligence-0.1.0
cd build
tar cvf sql-code-intelligence-0.1.0.tar sql-code-intelligence-0.1.0
scp sql-code-intelligence-0.1.0.tar mlsql2:/data/mlsql/releases/sql-code-intelligence/