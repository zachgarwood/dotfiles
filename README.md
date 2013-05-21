Set up
======
1. Create a git repository of all your important dotfiles
2. Clone the repository into a subdirectory of your home directory (ex: `~/dotfiles/`)
3. Place the `sync` script in the repository and run it to set up your machine
4. Run `sync` every time a modification is made to your dotfiles on any of your machines

Syncing
=======
Run `sync` every time this repository is updated to perform the following:
- Pull the most recent changes from the origin repository
- If it doesn't already exist, create an `originals` subdirectory
- Backup the dotfiles in the home directory with the same name as those in this directory to `originals`
- Create symbolic links in the home directory to the dotfiles in this directory
- Add any local changes to the repository
- Push any local changes to the origin repository
