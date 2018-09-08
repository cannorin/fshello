fshello
=======

Hello World from F#!

## How to say hello

1. Get the .NET Core SDK: https://www.microsoft.com/net/download

2. `dotnet tool install -g fshello`

3. `fshello`

## How to publish a .NET Core global tool

1. Get the NuGet CLI tool: https://docs.microsoft.com/en-us/nuget/tools/nuget-exe-cli-reference

2. Create a new nuget.org account: https://www.nuget.org/users/account/LogOn

3. Obtain an API key: https://www.nuget.org/account/apikeys

4. Execute `nuget setapikey <your api key>`

5. `make pack && nuget push bin/Release/<name>.<version>.nupkg`

6. Wait until it get published

7. `dotnet tool install -g <name>` to install

