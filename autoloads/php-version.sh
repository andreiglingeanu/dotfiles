
if [ -f $HOME/.php-version/php-version.sh ]; then
	source $HOME/.php-version/php-version.sh && php-version 5
else
	source $(brew --prefix php-version)/php-version.sh && php-version 5
fi

