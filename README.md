## GAGA

> "gaga" Because am not good at names and i was listening to lady gaga while coding this

https://github.com/Sanix-Darker/gaga/assets/22576758/40ed1d67-b46f-48ff-a5e6-d0b2b7fc8682

Gaga is a [git hook](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks) that use [`openssl`](https://www.openssl.org/) to encrypt & decrypt files you want to version on a public repository but keep it private.
This hook use "basic 256 `AES`" symmetric encryption, so you're prompted with a passphrase before a commit or after the pull from remote.

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
