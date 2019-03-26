# fastlane-files

[**博客介绍**](http://ripperhe.com/2017/03/30/fastlane-pod/)

## Installation

If you have not installed Fastlane before, please [install fastlane](https://docs.fastlane.tools/) first.

Create a `fastlane` folder in the root folder of your project and create a `Fastfile` file in this folder, simply add the following line to your Fastfile:

```ruby
import_from_git(url: 'https://github.com/ripperhe/fastlane-files', branch: 'master')
```

## Usage

### Release public pod lib

Enter the root directory of your project, and then, enter the following command at the terminal:

```bash
$ fastlane release_pod project:"project name" version:"new version"
```

### Release private pod lib

Add your private spec repo. Clones `URL` in the local spec-repos directory at `~/.cocoapods/repos/`. The remote can later be referred to by `NAME`.

```bash
$ pod repo add NAME URL [BRANCH]
```

Enter the root directory of your project, and then, enter the following command at the terminal:

```bash
$ fastlane release_pod repo:"your private sepc repo name" project:"project name" version:"new version"
```

### Optional parameters

If you want to add commit information, you can add this parameter:

```bash
$ fastlane release_pod project:"project name" version:"new version" desc:"commit information"
```

## Author

ripperhe, ripperhe@qq.com

## License

Fastlane-files is available under the MIT license. See the LICENSE file for more info.
