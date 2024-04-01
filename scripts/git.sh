# Clone just a directory out of a Git repository.
git clone -n --depth=1 --filter=tree:0 \
  https://github.com/cirosantilli/test-git-partial-clone-big-small-no-bigtree
cd test-git-partial-clone-big-small-no-bigtree
git sparse-checkout set --no-cone small
git checkout