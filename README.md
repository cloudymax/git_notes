# GitHub Cli

## installation

```bash
brew install gh
```

## Authentication

 - go to github.com
 - log in
 - go to <emp>Settings</emp> -> <emp>Developer Settings</emp> -> <emp>Personal Access Tokens</emp>
 - Create a new token
 - Create the login token
 - Create a header or a token file

 ```bash
  # Token File Example
  echo $TOKEN > token.txt
  gh auth login --with-token < token.txt
 ```


 ```bash
  # Token Header Example
  TOKEN=$(cat token.txt)
  X_TOKEN="x-access-token:$TOKEN"
  ENCODED_TOKEN=$(echo -n "$X_TOKEN"| base64)
  HEADER='http.extraheader="AUTHORIZATION: basic '${ENCODED_TOKEN}'"'
  git -c "${HEADER}" fetch origin
 ```

```bash
 brew install gh
 gh config set editor nano
 gh config set prompt enabled
 gh config set git_protocol ssh
 git config --global user.email "<id>+<user_name>@users.noreply.github.com"
```

## subtrees

```bash

# add a repo as a remote
git remote add -f tpope-vim-surround https://bitbucket.org/vim-plugins-mirror/vim-surround.git

# add remote as a subtree
git subtree add --prefix .vim/bundle/tpope-vim-surround tpope-vim-surround main --squash

# update subtree in main repo
git fetch tpope-vim-surround main
git subtree pull --prefix .vim/bundle/tpope-vim-surround tpope-vim-surround main --squash

```
