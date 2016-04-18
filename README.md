# homebrew-gdrive
Homebrew tap for Google Drive CLI

See [https://github.com/prasmussen/gdrive.git](https://github.com/prasmussen/gdrive.git)

## Usage
```
brew tap paulz/gdrive
brew install --HEAD gdrive
```

## Maintenance

### Updating go resources

```
git clone https://github.com/prasmussen/gdrive.git
cd gdrive
brew go-resources .
```
will output go resources in brew formula format:

```
  go_resource "github.com/sabhiram/go-git-ignore" do
    url "https://github.com/sabhiram/go-git-ignore.git",
      :revision => "228fcfa2a06e870a3ef238d54c45ea847f492a37"
  end

  go_resource "github.com/soniakeys/graph" do
    url "https://github.com/soniakeys/graph.git",
      :revision => "c265d9676750b13b9520ba4ad4f8359fa1aed9fd"
  end

  go_resource "golang.org/x/net" do
    url "https://go.googlesource.com/net.git",
      :revision => "fb93926129b8ec0056f2f458b1f519654814edf0"
  end

  go_resource "golang.org/x/oauth2" do
    url "https://go.googlesource.com/oauth2.git",
      :revision => "7e9cd5d59563851383f8f81a7fbb01213709387c"
  end

  go_resource "google.golang.org/api" do
    url "https://github.com/google/google-api-go-client.git",
      :revision => "9737cc9e103c00d06a8f3993361dec083df3d252"
  end
```
Copy paste go resources into formula to update

### TODO
 1. wait for the next release of gdrive to update formula in order to use source tar archive instead of HEAD revision
 2. pull request to submit formula to [https://github.com/Homebrew/homebrew-core](https://github.com/Homebrew/homebrew-core)
   * pull request to remove old formular from boneyard [https://github.com/Homebrew/homebrew-boneyard/blob/master/gdrive.rb](https://github.com/Homebrew/homebrew-boneyard/blob/master/gdrive.rb)
   * pull request to remove tap migration to boneyard [https://github.com/Homebrew/homebrew-core/blob/master/tap_migrations.json#L76](https://github.com/Homebrew/homebrew-core/blob/master/tap_migrations.json#L76)
 3. pull request to original repo to add homebrew instructions