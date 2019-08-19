# Chezmoi managed dotfiles

Expects a config file in `~/.config/chezmoi/chezmoi.yaml`, for example:

```
data:
  user:
    email: email@address.example
    name: Your Name
    time_zone: America/Phoenix
  ssh:
    public: <public key>
    config: |-
      Host beowulf
          Port 23123
          Hostname beowulf.example.com

      Host tunnel-beofulf
          Port 23123
          Hostname beowulf.example.com
          LocalForward 0.0.0.0:80 127.0.0.1:80
  admin:
    hosts:
    - localhost
```

~~You can generate it with the `generate` script.~~

Chezmoi now supports (in recent versions) a full initialization from one command:

    chezmoi init https://github.com/user/dotfiles.git --apply

Read more by running `chezmoi help init`


