DOTFILES="$(pwd)/dotfiles"

echo $DOTFILES

echo -e "\nCreating symlinks"
echo "=============================="

linkables=$( find $DOTFILES -name "*.symlink" )
for file in $linkables; do
    target="$HOME/.$( basename $file '.symlink')"
    echo $file
    echo $target
    if [ -e $target ]; then
        echo "~{$target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink of $file"
        ln -s $file $target
    fi
done
