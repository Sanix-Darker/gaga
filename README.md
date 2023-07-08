## GAGA

> "gaga" Because am not good at names and i as listening to lady gaga while coding this

Gaga is a git hook that use `openssl` to encrypt and decrypt files you want to version on a public repository.
This hook use "basic 256 `aes`" symmetric encryption method, so you're prompted with a passphrase encrypt or decrypt your files before a commit or after the commit.

### HOW SET IT UP

```bash
# Clone and install
git clone https://github.com/sanix-darker/gaga
cd gaga
bash ./install.sh # this will just install openssl (and maybe some little requirements)

# Supposing you're working on the repodir
cd gaga
# you copy 'pre-commit' and 'post-receive'
cp {./pre-commit,./post-receive} /path/to/your/repo/.git/hooks/
```

Now for each commit/pull, you're going to have encrypt/decrypt made on files specified on your `/path/to/your/repo/.gitgaga`.

### BONUS

*NOTE*: you can set a `$GAGA_PASSPHRASE` to have it work directly with no prompt asked before commiting/pulling code.
```
export GAGA_PASSPHRASE=umbrella
```
