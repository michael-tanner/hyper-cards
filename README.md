# hyper-cards
Static website at https://www.hypercards.io by Michael Tanner.


Used `Blazor Starter Application` as a starting point from https://github.com/staticwebdev/blazor-starter

## Local Dev

For local hosting run:
```bash
cd Client
dotnet run
```


Then in another terminal, run:
```bash
swa start http://localhost:5000
```

## Build


To build and publish site, run:
```bash
cd Client
dotnet publish -c Release
```

To test published/static site, run this on your local machine:
```bash
cd Client/bin/Release/net9.0/publish/wwwroot
python3 -m http.server 8000
```

