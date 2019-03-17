# `fhuitelec/fhuitelec` homebrew tap

This homebrew tap repository hosts the formulas for my personal CLI tools.

## Usage

```shell
brew tap fhuitelec/fhuitelec
```

## Contributing

Please note: formula URLs must point to a Github release source code tarball.

### Create the formula template

Create formulas like you would normally and place them in `/formula-templates`, then:
- replace the version reference by the environment placeholder `${FORMULA_VERSION}`
- replace the main formula SHA sum reference by the environment placeholder `${SHA_SUM}`

They will later be replaced by their values according to the version you will deploy.

### Create a Github release on your formula repository

For the repository targetted by the formula, create a Github release with a [semver](https://semver.org/) name.

### Generate the formula

This will generate the final formula that will be placed in `/Formula`.

```shell
export FORMULA=# The formula you wish to deploy
export VERSION=# Your Github release name
./bin/deploy-new-version $FORMULA $VERSION
```

### Test the formula locally

```shell
# Place yourself at the root of this repository locally
rm -rf /usr/local/Homebrew/Library/Taps/fhuitelec/ | true
mkdir /usr/local/Homebrew/Library/Taps/fhuitelec/
ln -s $PWD /usr/local/Homebrew/Library/Taps/fhuitelec/
```

With this, you can test your formulas locally (`brew install`, etc.).

Once you are done, you can clean this up:

```shell
rm -rf /usr/local/Homebrew/Library/Taps/fhuitelec/
brew tap fhuitelec/fhuitelec
```
