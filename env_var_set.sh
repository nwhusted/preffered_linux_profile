source profile.cfg

git config --global user.email "$email"
git config --global user.name "$git_name"

echo "export PATH=$HOME/bin:\$PATH" >> $HOME/.bash_profile
echo "export PYTHONPATH=$HOME/lib/python2.7/site-packages/:$HOME/lib/python3.6/site-packages/:\$PYTHONPATH" >> $HOME/.bash_profile
echo "export LD_LIBRARY_PATH=$HOME/lib:\$LD_LIBRARY_PATH" >> $HOME/.bash_profile
echo "export CPATH=$HOME/include:\$CPATH" >> $HOME/.bash_profile

source $HOME/.bash_profile

# Update VIMRCs
cp vimrc/vimrcs/basic.vim $HOME/.vimrc

# Easy fix to change the colorscheme in the git repository while allowing easy updates from upstream via the submodule
sed -i 's/.*colorscheme desert.*/\tcolorscheme elflord/' ~/.vimrc
