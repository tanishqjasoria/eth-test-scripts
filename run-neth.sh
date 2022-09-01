ORIGIN=tanishq
BRANCH=snap-test
cd
cd nethermind/src/Nethermind
git checkout $ORIGIN $BRANCH
git pull $ORIGIN $BRANCH
rm -rf Nethermind.Runner/bin
dotnet dotnet build Nethermind.sln -c Release
cd Nethermind.Runner
dotnet run -c Release --config goerli --JsonRpc.Enabled true --HealthChecks.Enabled true --HealthChecks.UIEnabled true --JsonRpc.JwtSecretFile=../../../../prysm/jwt.hex --JsonRpc.Host=0.0.0.0 |& tee console.txt
