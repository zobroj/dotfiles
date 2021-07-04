# Create New Repo 
```sh
echo "# dotfiles" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:zobroj/dotfiles.git
git push -u origin main
```

# Push Existing Repo
```sh
git remote add origin git@github.com:zobroj/dotfiles.git
git branch -M main
git push -U origin main

eval "$(ssh-agent -s)"
```
