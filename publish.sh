git rebase master;
gulp production;
git add .;
git commit -m "Publish";
git push -f;
