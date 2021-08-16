<html>
<style>
    :root {
    --background-color:  rgba(0,0,0,.1);
    --highlight-color:   rgba(0,0,0,0);
    --header-background: rgba(0,0,0,.3);
    --border-color:      rgba(0,0,0,.4);
    --header-color:      rgba(200,200,200,1);
    --alt-header-color:  rgba(200,200,200,1);
    --text-color:        rgba(200,200,200,1);
    --link-color:        rgba(100,250,155,1);
    --pop-color:         rgba(250,150,50,1);
    --border-thickness:  5px;
    --border-radius:     10px;
    --font1-family:      'Press Start 2P', cursive;
    --font1-size:        100%;
    --h1-multiplier:     2.5;
    --h2-multiplier:     2;
    --h3-multiplier:     1.5;
    --font2-family:      'Quicksand', sans-serif;
    --font2-size:        100%;
    --gradient-color1:   rgba(18,35,90,.5);
    --gradient-c1-amt:   40%;
    --gradient-color2:   rgba(10,87,200,.5);
    --gradient-c2-amt:   100%;
    --gradient-x:        -111.8%;
    --gradient-y:        -10.3%;
    --shadow-x:          4px;
    --shadow-y:          2px;
    --shadow-radius:     5px;
    --shadow-color:      rgba(0,0,0,1);
    }
    body {
        background-color: var(--background-color);
        background-image:  radial-gradient( circle farthest-corner at var(--gradient-x) var(--gradient-y), var(--gradient-color1) var(--gradient-c1-amt), var(--gradient-color2) var(--gradient-c2-amt) );
        text-shadow: var(--shadow-x) var(--shadow-y) var(--shadow-radius) var(--shadow-color);
    }
    p {
       background-color: var(--background-color);
       border: var(--border-thickness) solid var(--border-color);
       border-radius: var(--border-radius);
       padding: 1%;
       font-size: var(--font2-size);
       font-family: var(--font2-family);
       color: var(--text-color);
       text-align: justify;
       text-justify: inter-word;
       line-height: 1.4;
       letter-spacing: .7px;
    }
    h1 {
        color: var(--header-color);
        background-color: var(--header-background);
        font-size: calc(var(--font1-size) * var(--h1-multiplier));
        font-family: var(--font1-family);
        letter-spacing: -2px;
        text-align: center;
    }
    h2 {
        color: var(--header-color);
        background-color: var(--highlight-color);
        font-size: calc(var(--font1-size) * var(--h2-multiplier));
        line-height: 1.8;
        font-family: var(--font1-family);
    }
    h3 {
        color: var(--header-color);
        font-size: calc(var(--font1-size) * var(--h3-multiplier));
        background-color: var(--header-background);
        text-indent: 5% each-line;
        line-height: 1.5;
        font-family: var(--font1-family);
    }
    h4 {
        color: var(--header-color);
        background-color: rgba(0,0,0,0);
        font-family: var(--font1-family);
        background-color: var(--header-background);
    }
    ul {
       padding: 1%;
       font-size: var(--font2-size);
       font-family: var(--font2-family);
       color: var(--text-color);
       line-height: 1.4;
       letter-spacing: .7px;
    }
    ol {
       list-style-type: numeric;
       padding: 1%;
       font-size: var(--font2-size);
       font-family: var(--font2-family);
       color: var(--text-color);
       line-height: 1.4;
       letter-spacing: .7px;
    }
    emp {
       background-color: var(--highlight-color);
       color: var(--pop-color);
       line-height: 1.3;
       letter-spacing: .5px;
       text-align: justify;
       text-justify: inter-word;
       font-size: var(--font1-size);
       font-family: var(--font1-family);
    }
    a:link {
        color: var(--link-color);
        background-color: var(--highlight-color);
        text-decoration: underline;
        font-family: var(--font1-family);
        font-size: var(--font1-size);
    }
</style>

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


 `brew install gh`
 `gh config set editor nano`
 `gh config set prompt enabled`
 `gh config set git_protocol ssh`
 `git config --global user.email "<id>+<user_name>@users.noreply.github.com"`

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

</html>
