# Paper Initialization


A bunch of simple scripts for initializing a Minecraft Java server in Termux (Paper, 1.21.11)

Run this to install the server:

```bash
curl -fsSL https://raw.githubusercontent.com/portanz/paper-initialization/refs/heads/main/init.sh | bash 
```
# Other scripts

All other scripts are installed when init.sh is ran.

- start.sh - start the server.
- killserver.sh - kill all java processes (ending a session in Termux leaves Java processes hanging, which breaks start.sh afterwards)

# Other stuff

The server runs on the local IP of your device and uses 25565 as the port.

After ending the Termux session that had the server running, run killserver.sh!!!
