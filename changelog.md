# Change Log
All notable changes to this project will be documented in this file.
 
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [unreleased]
 
Here we write upgrading notes for brands. It's a team effort to make them as
straightforward as possible.
 
### Add
- [templates]
  Added Trusted Launch support for Gen2 managed Windows images.

## [2.0.1.0] - 15.11.2021

### Added
- [networkInterface.json]
  Added acceleratd networking
 
## [2.0.0.0] - 12-11-2021
 
Here we write upgrading notes for brands. It's a team effort to make them as
straightforward as possible.
 
### Added
- [main.json,createUiDefinition]
  Added the ability for the user to select which username to use for the learner (Apprentice, Learner, Student)
- [templates]
  Added courseDate tag 
  Added Trusted Launch support for Gen2 Linux virtual machines. This is currently not supported by SIG and managed Images, so disabled for Windows images.
 
### Changed
- [main.json,createUiDefinition]
  Removed the ability for users to create a learner password. This password is now pulled from a key vault
