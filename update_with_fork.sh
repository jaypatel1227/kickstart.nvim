# first update with main branch
echo "======Pulling from origin/master"
git switch master
git pull
echo "======Swtiching to single file personalization"
git switch personalization
echo "======Rebasing and pushing"
git rebase origin/master
git push --force-with-lease
echo "======Done with single file personlization!"
# now update modular branch
echo "======Removing kickstart-modular remote"
git remote remove kickstart-modular
echo "======Adding and fetching remote for the kickstart-modular"
git remote add kickstart-modular https://github.com/dam9000/kickstart-modular.nvim.git -m master
git fetch kickstart-modular master
echo "======Switching to personalization"
git switch personalized-modular
echo "======Rebasing and pushing"
git rebase kickstart-modular
git push --force-with-lease
echo "======Done!"
