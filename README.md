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
    private: |-
      -----BEGIN RSA PRIVATE KEY-----
      <private key>
      -----END RSA PRIVATE KEY-----
    config: |-
      Host beowulf
          Port 23123
          Hostname beowulf.example.com

      Host tunnel-beofulf
          Port 23123
          Hostname beowulf.example.com
          LocalForward 0.0.0.0:80 127.0.0.1:80
```

You can generate it with the `generate` script.
