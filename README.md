# fastlane-files

## Installation

If you have not installed Fastlane before, please [install fastlane](https://docs.fastlane.tools/) first.

Create a `fastlane` folder in the root folder of your project and create a `Fastfile` file in this folder, simply add the following line to your Fastfile:

```ruby
import_from_git(url: 'https://github.com/ripperhe/fastlane-files', branch: 'master')
```

## How to use

### Release public pod lib

Enter the root directory of your project, and then, enter the following command at the terminal:

```bash
fastlane release_public_lib project:"project name" version:"new version"
```


## Author

ripperhe, ripperhe@qq.com

## License

Fastlane-files is available under the MIT license. See the LICENSE file for more info.
