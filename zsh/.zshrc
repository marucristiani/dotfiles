# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cow='cowsay $(fortune)'
alias crearAlias='subl ~/.zshrc'
alias sublime='subl .'
alias compartir='python -m SimpleHTTPServer'
alias itemsMigrationRules='cd /Users/mcristiani/git/workspace/categories-itemsMigrationRules;g220'
alias natural_url_api='cd /Users/mcristiani/git/workspace/search-natural_url_api;g220'
alias structure_update='cd /Users/mcristiani/git/workspace/categories-structure_update;g225'
alias structureUpdateApi='cd /Users/mcristiani/git/workspace/categories-structureUpdate_api;g137'
alias metacategoriesApi='cd /Users/mcristiani/git/workspace/categories-metacategoriesApi;g137'
alias item_migration='cd /Users/mcristiani/git/workspace/categories-item_migration;g220'
alias attributesAPI='cd /Users/mcristiani/git/workspace/attributes-api; g137'
alias testAttributesAPI='cd /Users/mcristiani/git/workspace/attributes-api/test; g238'
alias seo_dashboard='cd /Users/mcristiani/git/workspace/categories-seo_dashboard_be;g225'
alias seo_frontend='cd /Users/mcristiani/git/workspace/categories-seo_frontend;g235'
alias opportunities='cd /Users/mcristiani/git/workspace/categories-opportunities;g225'
alias closed_item_migration='cd /Users/mcristiani/git/workspace/categories-closed_item_migration;g235'
alias nginx='cd /Users/mcristiani/git/workspace/api-rules'
alias wks='cd /Users/mcristiani/git/workspace'
alias salesforce='cd /Users/mcristiani/git/workspace/crm-sfCode'
alias mostrarOcultos='defaults write com.apple.Finder AppleShowAllFiles YES'
alias ocultarOcultos='defaults write com.apple.Finder AppleShowAllFiles NO'
alias g137='gvm use grails 1.3.7'
alias g220='gvm use grails 2.2.0'
alias g235='gvm use grails 2.3.5'
alias g238='gvm use grails 2.3.8'
alias g225='gvm use grails 2.2.5'
alias tarGz='tar -zcvf'
alias untarGz= 'tar -zxvf'
alias fing='cd /Users/mcristiani/Desktop/Maru/fing/'
alias elastic='sudo /Users/mcristiani/git/workspace/categories-closed_item_migration/es/bin/elasticsearch'
alias memcache_start='memcached -vv'
alias upd='brew update && brew upgrade && brew cleanup && brew prune'

alias serv_structure_update='sshml -l mcristiani e-0000790a.melicloud.com' 
alias serv_structure_update_api='sshml -l mcristiani e-00000e71.melicloud.com' 
alias serv_opportunities='sshml -l mcristiani e-0000647b.melicloud.com' 
alias serv_seo_dashboard='sshml -l mcristiani e-00004627.melicloud.com' 
alias serv_item_feed_consumer='sshml -l mcristiani e-000007f3.melicloud.com' 
alias serv_metacateg_api_1='sshml -l mcristiani e-000011b1.melicloud.com' 
alias serv_metacateg_api_2='sshml -l mcristiani e-000011b3.melicloud.com' 
alias serv_metacateg_dump='sshml -l mcristiani e-00001ffe.melicloud.com' 
alias serv_item_migration='sshml -l mcristiani e-00002b68.melicloud.com' 
alias serv_items_migrations_rules='sshml -l mcristiani e-0000168f.melicloud.com' 
alias serv_natural_url_api='sshml -l mcristiani e-00002517.melicloud.com'
alias serv_seo_frontend='sshml -l mcristiani e-00006cff.melicloud.com'
alias serv_seo_backend='sshml -l mcristiani e-00004627.melicloud.com'
alias serv_closed_item_migration='sshml -l mcristiani e-00008e05.melicloud.com'

alias servs_structure_update='melicssh "categories-structure_update*"'

alias mysqlStart='mysql.server start'
alias sshML_Config='subl $HOME/.melicssh/config'
alias bm='ssh -i ~/.ssh/mcristiani.pem mcristiani@10.100.41.3'
alias lolcat="$HOME/.rvm/gems/ruby-2.0.0-p0/gems/lolcat-42.0.99/bin/lolcat"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git grails)

source $ZSH/oh-my-zsh.sh

#source $(brew --prefix)/etc/profile.d/z.sh

export EDITOR='subl -w'
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export MELI_USER=mcristiani
export MELI_PASS=PSW
# Customize to your needs...
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/share/java/grails/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"
