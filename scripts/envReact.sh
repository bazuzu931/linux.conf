#!/bin/bash



# create project and go to it
mkdir $1; cd $1;

# add basic folders
touch package.json
touch README.md

mkdir public src;

touch public/index.html
mkdir public/{images,uploads};
touch public/font-awesome.min.css

touch src/index.js
touch src/main.css
mkdir src/node_modules

mkdir src/node_modules/containers
mkdir src/node_modules/containers/layout
mkdir src/node_modules/containers/phones
touch src/node_modules/containers/layout/index.js
touch src/node_modules/containers/phones/index.js

mkdir src/node_modules/reducers
touch src/node_modules/reducers/index.js
touch src/node_modules/reducers/phones.js

######################################################################
function choose_os() {
if [ -f /etc/os-release ]; then
  # freedesktop.org and systemd
  . /etc/os-release
  OS=$NAME
elif type lsb_release >/dev/null 2>&1; then
  # linuxbase.org
  OS=$(lsb_release -si)
elif [ -f /etc/lsb-release ]; then
  # For some versions of Debian/Ubuntu without lsb_release command
  . /etc/lsb-release
  OS=$DISTRIB_ID
elif [ -f /etc/debian_version ]; then
  # Older Debian/Ubuntu/etc.
  OS=Debian
elif [ -f /etc/SuSe-release ]; then
  # Older SuSE/etc.
  OS=Suse
elif [ -f /etc/redhat-release ]; then
  # Older Red Hat, CentOS, etc.
  OS=Redhat
else
  # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
  OS=$(uname -s)
fi

echo $OS
}

#
printf "Select the package manager (1 or 2) :
	1)npm 
	2)yarn
	-> ";

read choise;
case $choise in

  1)  read -r -p "Do you want to install nodejs+npm ? [y/N] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
	then

	  distr=$(choose_os)
	  echo "Your Linux Distribution is: " $distr

	  if [[ $distr == "Linux Mint" || $distr == "Ubuntu" || $distr == "Debian" ]]; then
		sudo apt-get update;
		sudo apt-get install -y nodejs

	  elif [ "$distr" == "Arch" ]; then
		pacman -S nodejs npm

	  elif [ "$distr" == "Redhat" ]; then
		printf "Select the node version (1 or 2) :
		  1) Node version 8
		  2) Node version 9
		  -> ";
		read version;
		case $version in
		  1)  curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -;
			sudo yum -y install nodejs;;
		  2)  curl --silent --location https://rpm.nodesource.com/setup_9.x | sudo bash -;
			sudo yum -y install nodejs;;
		esac

	  else
		echo "Sorry, I dont understand which OS using by you"
	  fi 
	fi
	
	# npm init -y
	;;

  2)  read -r -p "Do you want to install yarn ? [y/N] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
	then

	  distr=$(choose_os)
	  echo "Your Linux Distribution is: " $distr

	  if [[ $distr == "Linux Mint" || $distr == "Ubuntu" || $distr == "Debian" ]]; then
		sudo apt-get update && sudo apt-get install yarn;
	  elif [ "$distr" == "Arch" ]; then
		pacman -S yarn
	  elif [ "$distr" == "Redhat" ]; then
		curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash - ;
		sudo yum install yarn;
		sudo dnf install yarn;
	  elif [ "$distr" == "Suse" ]; then
		sudo zypper ar -f https://dl.yarnpkg.com/rpm/ Yarn;
		sudo zypper in yarn;
	  else
		echo "Sorry, I dont understand which OS using by you"
	  fi 
	fi

	# yarn init -y
	;;
esac;


######################################################################
printf '
{
  "name": "project name",
  "version": "0.1.0",
  "description": "",
  "private": true,
  "dependencies": {
	"classnames": "^2.2.5",
	"ramda": "^0.23.0",
	"react": "^15.5.4",
	"react-dom": "^15.5.4",
	"react-redux": "^5.0.4",
	"react-router": "3.0.5",
	"react-router-redux": "^4.0.8",
	"redux": "^3.6.0",
	"redux-devtools-extension": "^2.13.0",
	"redux-thunk": "^2.2.0",
	"superagent": "^3.5.2"
  },
  "devDependencies": {
	"react-scripts": "0.9.5"
  },
  "scripts": {
	"start": "react-scripts start",
	"build": "react-scripts build",
	"test": "react-scripts test --env=jsdom",
	"eject": "react-scripts eject"
  },
  "engines": {
	"node": "6.9.4",
	"npm": "3.10.10"
  },
  "keywords": [],
  "author": "",
  "license": "MIT"
}
' > package.json;


######################################################################
printf "
import './main.css'

import React from 'react'
import ReactDOM from 'react-dom'

import {createStore, applyMiddleware} from 'redux'
import {composeWithDevTools} from 'redux-devtools-extension'
import thunk from 'redux-thunk'
import {syncHistoryWithStore} from 'react-router-redux'
import {Router, Route, browserHistory} from 'react-router'
import {Provider} from 'react-redux'

import reducers from 'reducers'
import Layout from 'containers/layout'
import Phones from 'containers/phones'

const store = createStore(reducers, composeWithDevTools(
  applyMiddleware(thunk)
))

const history = syncHistoryWithStore(browserHistory, store)

ReactDOM.render(
  <Provider store={store}>
	<Router history={history}>
	  <Route component={Layout}>
		<Route path='/' component={Phones} />
	  </Route>
	</Router>
  </Provider>,
  document.getElementById('root')
);
" > src/index.js;

######################################################################
printf '
<!doctype html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="%%PUBLIC_URL%%/favicon.ico">
	<link rel="stylesheet" href="%%PUBLIC_URL%%/font-awesome.min.css">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<title>React App</title>
  </head>
  <body>
	<div id="root"></div>
	
  </body>
</html>
' > public/index.html;


printf "
import {combineReducers} from 'redux'
import {routerReducer} from 'react-router-redux'

import phones from './phones'

export default combineReducers({
	routing: routerReducer,
	phones
})
" > src/node_modules/reducers/index.js;


printf "
const initialState = {}

export default (state = initialState) => {
	return state
}
" > src/node_modules/reducers/phones.js;


printf "
import React from 'react'

const Layout = ({children}) => (
	<div>
		{children}
	</div>
)

export default Layout
" > src/node_modules/containers/layout/index.js;



printf "
import React from 'react'

const Phones = () => (
	<div>
		Phones
	</div>
)

export default Phones
" > src/node_modules/containers/phones/index.js;



tree ../$1;