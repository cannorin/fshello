NAME=fshello

DOTNET_PATH?=/usr/bin

DOTNET?=$(DOTNET_PATH)/dotnet
GIT?=$(shell which git)

all: release

release: bin/Release/netcoreapp2.0/$(NAME).dll

bin/Release/netcoreapp2.0/$(NAME).dll:
	$(DOTNET) publish -c Release -o bin/Release/

run: release
	$(DOTNET) run -c Release

DOTNET_PUBLISH_FLAGS= -c Release --self-contained 

publish-windows:
	$(DOTNET) publish $(DOTNET_PUBLISH_FLAGS) --runtime win-x64 -o bin/publish/windows/
publish-linux:
	$(DOTNET) publish $(DOTNET_PUBLISH_FLAGS) --runtime linux-x64 -o bin/publish/linux/
publish-osx:
	$(DOTNET) publish $(DOTNET_PUBLISH_FLAGS) --runtime osx-x64 -o bin/publish/osx/

publish: publish-windows publish-linux publish-osx ;

pack:
	$(DOTNET) pack -c Release

debug: bin/Debug/netcoreapp2.0/$(NAME).dll

bin/Debug/netcoreapp2.0/$(NAME).dll:
	$(DOTNET) build -c Debug

run-debug: debug
	$(DOTNET) run

# Clean

clean:
	$(DOTNET) clean
	$(RM) -rf bin/

