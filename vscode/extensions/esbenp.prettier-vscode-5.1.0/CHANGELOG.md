# Change Log

All notable changes to the "prettier-vscode" extension will be documented in this file.

<!-- Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file. -->

## [5.1.0]

- Resolves issue where untitled JSON files were resolved to `json-stringify` parser. (#1435)

## [5.0.1]

- Updated modules
- New build process

## [5.0.0]

- Removed support for legacy linter integration. [See documentation](https://github.com/prettier/prettier-vscode#linter-integration) on how to configure linters.

## [4.7.0]

- Adds support for formatting VS Code settings files (settings.json). (#1343)

## [4.6.0]

- Update loading implicit Prettier dep from `node_modules` to only occur if explicit `package.json` dep is not found in a parent directory
- Show a custom error message / notification in the case where `prettier.prettierPath` does not reference an instance of Prettier

## [4.5.0]

- Updated prettier to 2.0.5

## [4.4.0]

- Reverted change that attempts to resolve config based on prettier version.

## [4.3.0]

- Removed AppInsights telemetry as its no longer needed
- Updated instructions on how to use linters
- Added log warning about legacy linter integrations

## [4.2.0]

- Use default configuration based on the version of prettier

## [4.1.1]

- Updated prettier to 2.0.4

## [4.1.0]

- Support loading Prettier from `node_modules` even if it doesn't appear as a direct dependency in a `package.json`
- Honor project-scoped config when loading module (#1222, [#950](https://github.com/prettier/prettier-vscode/issues/950))
- Added configuration option `withNodeModules` to enable processing of files in the `node_modules` folder
- Updated prettier to 2.0.3 (#1289)

## [4.0.0]

- Updated prettier to 2.0 - [See changes here](https://prettier.io/blog/2020/03/21/2.0.0.html)
- Change default configuration for `trailingComma` to `es5` to match Prettier 2.0
- Change default configuration for `arrowParens` to `always` to match Prettier 2.0
- Change default configuration for `endOfLine` to `lf` to match Prettier 2.0
- Updated module dependencies
- Removed deprecated configuration options

## [3.20.0]

- No longer loads prettier when `requireConfig` is `true` and no config is found. (#1161)
- Minor logging improvements

## [3.19.0]

- Notifications only show when running formatter
- Removed logs for status bar events

## [3.18.0]

- Fixed a bug with the prettier output open command
- Upgraded module dependencies

## [3.17.0]

- Due to performance issues, global module resolution is now off by default. Enable by setting `prettier.resolveGlobalModules` to `true`

## [3.16.0]

- Show error when prettier configuration file is invalid
- Removed unused debug tracer on module resolution

## [3.15.0]

- Always format untitled files, even when `requireConfig` setting is enabled

## [3.14.0]

- Fixed an issue with global module resolution

## [3.13.0]

- Added support for global module resolution
- Added setting `packageManager` to determine which package manager to use for global module resolution
- Fixed issue where unsaved HTML files were resolved as Angular

## [3.12.0]

- Reverted range filter on formatter registration due to problems, needs more investigation
- Added additional details to description of `requireConfiguration` option

## [3.11.0]

- Additional logging for errors loading config
- Updated status icon to not error states

## [3.10.0]

- Added setting `prettier.useEditorConfig` (defaults to `true`) to allow disabling resolving `.editorconfig` for Prettier config
- Added additional logging
- Added `pattern` filter to formatter registrations to avoid registering incorrectly on multi-workspace projects
- Removed some unused localization code

## [3.9.0]

- Improved error logging.
- Bumped dependencies and type definitions to latest
- More information in readme about configuration

## [3.8.0]

- Fixed issue where VS Code and local config where merged. If local config is present, only it will be used. [#1074](https://github.com/prettier/prettier-vscode/issues/1074)

## [3.7.0]

- Removed deprecation message from `requireConfig` (Was added by mistake). [#1056](https://github.com/prettier/prettier-vscode/issues/1056)
- Sets `resolveConfig: true` to allow parser overrides on [Prettier 1.19+](https://prettier.io/blog/2019/11/09/1.19.0.html#api). [#1067](https://github.com/prettier/prettier-vscode/issues/1067)
- Fix for finding local `prettier` module in packages located in `node_modules` dirs
- Added doc on what languages support range formatting

## [3.6.0]

- Added back status bar button

## [3.5.1]

- Add command `Prettier: Create Configuration File` to create a basic `.prettierrc` file

## [3.5.0]

- Fixed issue resolving user home files on mac. i.e. (`~/.prettierrc`) (#1045)
- Improved tests for config resolution

## [3.4.0]

- Adds back VS Code config

## [3.3.0]

- Bug fixes
- Change telemetry metric names

## [3.2.0]

- Removed support for Prettier versions older than 1.13.0.
- No longer bundling linters with extension - to use install them in your package.json.
- Use Prettier as default resolver of formatter instead of VS Code.
- Use Prettier to determine if a file is ignored or not instead of custom logic.
- Support for formatting of untitled files when the language is set by VS Code.
- Set file path config on format to assist with parser resolution.
- Less fallbacks - if you have local prettier installed it will always use that. Before if your local prettier didn't support things we would fall back to bundled prettier - this caused many errors and inconsistent behavior.
- Removed toolbar button.
- Deprecated linter configuration settings.
- Enhanced logging.
- Extension built with webpack.
- Memoize package path lookup to improve perf of repeated calls to same file.
- Shows error message when outdated versions of prettier are used.
- Refreshes modules without restart for cases where prettier version or plugins are installed locally.
- Registers `.graphql` files as `graphql` language in order to provide formatting. (#989)
- Ignore files are only read from the workspace root folder to behave the [same as prettier](https://github.com/prettier/prettier/issues/4081).
- Added configuration option `prettier.prettierPath` to override module resolution.
- Added configuration option `prettier.configPath` to override configuration file resolution.

## [2.3.0]

- Updated VS Code Version to 1.34.0
- Changed App Insights api key

## [2.2.0]

- Added App Insights telemetry to track feature usage.

## [2.1.0]

- Deprecated support for ESLint, TSLint, and Stylelint. [See documentation](https://github.com/prettier/prettier-vscode#linter-integration)

## [1.12.0]

- Fixed issue where error output was used before initialized (#918)

## [1.11.0]

- Localization support for `zh-cn` and `zh-tw`
- Fixed issue where text-fixtures were bundled in the extension.

## [1.10.0]

- Prettier [1.18](https://prettier.io/blog/2019/06/06/1.18.0.html)
- Docs now explain how to lint TypeScript code with ESLint.
- Improve supported language resolution with local Prettier instances
- Prettier Plugin Support
- prettier-eslint 9.0.0

## [1.9.0]

- Prettier [1.17](https://prettier.io/blog/2019/04/12/1.17.0.html)
- New setting `quoteProps`. (prettier 1.17)

## [1.8.0]

- Prettier [1.16](https://prettier.io/blog/2019/01/20/1.16.0.html)
- prettier-tslint 0.4.2

## [1.7.0]

- Validate the `"prettier"` key in `package.json` using the prettier settings schema
- Prettier [1.15](https://prettier.io/blog/2018/11/07/1.15.0.html)
- New options: jsxSingleQuote, htmlWhitespaceSensitivity and endOfLine (More info in readme).

## [1.6.0]

- disableLanguages only in User / Workspace settings (no more in folder settings).It allows to register formatters for every supported language.
- Prettier [1.14](https://prettier.io/blog/2018/07/29/1.14.0.html)
- New option: tslintIntegration (boolean) use `prettier-tslint` instead of `prettier`

## [1.5.0]

- Revert notification popup: remove it.
- fix parser inference

## [1.4.0]

- [prettier 1.13.4](https://prettier.io/blog/2018/05/27/1.13.0.html)
- prettier-stylelint 0.4.2

## [1.3.1]

- [prettier 1.12.1](https://prettier.io/blog/2018/04/11/1.12.0.html)

## [1.3.0]

- [prettier 1.12.0](https://prettier.io/blog/2018/04/11/1.12.0.html)

## [1.2.0]

- [Prettier 1.11.1](https://prettier.io/blog/2018/02/26/1.11.0.html)

## [1.1.3]

- Improve prettier resolution algorithm for monorepos
- prettier-eslint@8.8.1
- `vue` is now disabled by default. Opt-in by removing `vue` from disableLanguages setting

## [1.1.2]

- prettier-eslint@8.3.1 revert previous update

## [1.1.1]

- prettier-eslint@8.7.5

## [1.1.0]

- Disabling a language `disableLanguages` now allows to use an other formatter. NOT when disabling in a sub workspace folder (noop)
- Prettier 1.10, `vue` `jsonc` `postcss` support.

## [1.0.0]

- Prettier 1.9
- New option: requireConfig (boolean) Format only files which have a prettier config (.prettierrc, ...)
- Don't merge editor's options into prettier config

## [0.25.0]

- Multi-root support.
- Removed all `*Enable` settings, these are now inferred from Prettier itself. Use scoped `editor.formatOnSave` to disable formatting some languages on save.
  (See README)
- Markdown support
- Prettier 1.8.2

## [0.24.0]

- new setting, ignorePath. Ignore files.
- Eslint now also runs on TypeScript files.
- new setting, stylelintIntegration. prettier + stylelint.
- Prettier 1.7

## [0.23.1]

- Prettier 1.6.1

## [0.23.0]

- Read configuration from files.
- Prettier 1.6

## [0.22.0]

- Changed Status bar: hide/show depending on active editor.
- Fix local resolution.

## [0.21.0]

- Reworked error messages. They are now in a dedicated output channel.

## [0.20.0]

- Prettier 1.5
- Added JSON and GraphQL formatting (Range formatting disabled)
- Disable range formatting with postcss parser (broken)

## [0.19.1]

- Fix sass language id (sass -> scss)
- Update prettier to 1.4.4
- Update prettier-eslint to 6.3.0

## [0.19.0]

- Option to select language ids prettier will run on.
- Prettier 1.4.2

## [0.18.0]

- Prettier 1.4
- Now also formats CSS and TypeScript
- Format Selection highly improved.

## [0.17.0]

- Bump dependencies.
- `jsx` language support in addition to `javascript` and `javascriptreact`.

## [0.16.0]

- New setting eslintIntegration. Use `prettier-eslint` under the hood.

## [0.14.0]

- Bundled with prettier 1.1.0
- New setting `useTabs`. (prettier 1.0)
- New setting `semi`. (prettier 1.0)

## [0.13.0]

- Local prettier has to be _explicitly_ installed (dependencies or devDependencies)

## [0.11.0]

- Resolve 'prettier' against formatted file. Nearest upward _node_modules/prettier_

## [0.10.0]

- New setting `jsxBracketSameLine`. (prettier 0.17.0)
- Changed `trailingComma` setting `['none', 'es5', 'all']` (prettier 0.19.0)

## [0.7.0]

- Removed `Prettier` action.
- Use vscode actions `Format Document` and `Format Selection`.
- Removed `prettier.formatOnSave` setting in favor of the more general setting `editor.formatOnSave`
- Deprecated `useFlowParser` setting. Introduced `parser` setting. (Since prettier 0.0.10)

## [0.1.0]

- Initial release
