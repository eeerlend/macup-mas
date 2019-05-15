# macup-mas

A [macup](https://github.com/eeerlend/macup-builder) module that installs Mac App Store applications on your mac. Dependant on [macup-homebrew](https://github.com/eeerlend/macup-homebrew)

## Installation
Run the following command to add it to your repo

```bash
npm install eeerlend/macup-mas --save
```

## Configuration
Add your own packages to be installed in the macup configuration file like this...

```bash
macup_mas_apps+=(
  803453959 # ID of application from Mac App Store
)
```
