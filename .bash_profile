user_color=$(tput setaf 87);
host_color=$(tput setaf 1);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);
working_dir=$(tput setaf 71);
git_branch_color=$(tput setaf 200);
PS1="\[${bold}\]";
PS1+="\[${user_color}\]\u";
PS1+="\[${white}\] at ";
PS1+="\[${host_color}\]\h";
PS1+="\[${white}\] in ";
PS1+="\[${working_dir}\]\w";
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1+="\[${git_branch_color}\] \$(parse_git_branch) ";
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";
export PS1;
