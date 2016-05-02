# homebrew gdrive
## Google Drive CLI
Homebrew now can now install gdrive again!

```
brew install gdrive
```

See [https://github.com/prasmussen/gdrive.git](https://github.com/prasmussen/gdrive.git)

## This tap is for testing only
As this pull request was accepted: https://github.com/Homebrew/homebrew-core/pull/754 we no longer need this tap. Homebrew will use [current formula](https://github.com/Homebrew/homebrew-core/commits/master/Formula/gdrive.rb).

Here is how to install this tap for testing:

```
brew tap paulz/gdrive
brew install gdrive
```

### DONE to restore gdrive homebre formula
 1. [x] wait for the next release of gdrive to update formula in order to use source tar archive instead of HEAD revision. Using 2.1.0 release: https://github.com/prasmussen/gdrive/releases/tag/2.1.0
 2. [x] [Submit formula](https://github.com/Homebrew/homebrew-core/pull/754) to Homebrew. [https://github.com/Homebrew/homebrew-core/blob/master/Formula/gdrive.rb](https://github.com/Homebrew/homebrew-core/blob/master/Formula/gdrive.rb)
 2. [x] [Remove old formular from boneyard](https://github.com/Homebrew/homebrew-boneyard/pull/111) [https://github.com/Homebrew/homebrew-boneyard/blob/master/gdrive.rb](https://github.com/Homebrew/homebrew-boneyard/blob/master/gdrive.rb)
 2. [x] Test installation without tap: `brew install gdrive`
 2. [x] Update readme
 3. [x] Remove taps

### WAITING for Pull Requests:
 3. [x] [Update read me](https://github.com/prasmussen/gdrive/pull/148) to add homebrew instructions

### TODO
 1. [ ] Watch for next release of gdrive: https://github.com/prasmussen/gdrive/releases to update the formula

