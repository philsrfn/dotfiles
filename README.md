# Dotfiles

I use symlinking for my dotfiles. I am currently working on a script to automate the symlinking, but in the meantime just do this for every file you want to add to your local config:

```bash
$ ln -sf [absolute path to this directory]/filename.ext [absolute path to directory]/filename.ext

```

so for example:
```bash
$ ln -sf ~/dotfiles/zshrc ~/.zshrc

```
