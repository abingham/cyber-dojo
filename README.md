
# Hi. Welcome to cyber-dojo :-)

- [cyber-dojo](https://cyber-dojo.org) is where programmers meet to [practice](http://jonjagger.blogspot.co.uk/2013/10/practice.html) programming!
- cyber-dojo is <em>not</em> an **IDE**, an **I**ndividual **D**evelopment **E**nvironment
- cyber-dojo <em>is</em> an **IDE**, an **I**nteractive **D**ojo **E**nvironment!
- cyber-dojo is about [shared](http://jonjagger.blogspot.co.uk/2013/10/teams.html) [learning](http://jonjagger.blogspot.co.uk/2013/10/learning.html)
- in a cyber-dojo you [practice](http://jonjagger.blogspot.co.uk/2013/10/practice.html) by going <em>slower</em> and focusing on [improving](http://jonjagger.blogspot.co.uk/2014/02/improving.html) rather than finishing
- How do I [practice programming in cyber-dojo](http://blog.cyber-dojo.org/2014/08/getting-started.html)?
- How can I [contribute to developing cyber-dojo](https://github.com/cyber-dojo/cyber-dojo/blob/master/CONTRIBUTING.md)?
- [cyber-dojo foundation](http://blog.cyber-dojo.org/2015/08/cyber-dojo-foundation.html) is a registered Scottish Charitable Incorporated Organisation

- - - -
# Running your own cyber-dojo server (from the docker images)

Follow [these instructions](https://blog.cyber-dojo.org/2014/09/setting-up-your-own-cyber-dojo-server.html).

The `cyber-dojo up` command uses three default start-point images; *--custom*, *--exercises*, and *--languages*.
You can create and use your own start-point images in place of these defaults if you wish.
Read how to create them by running:
```
cyber-dojo start-point create --help
```

Read how to use them by running:
```
cyber-dojo up --help
```

- - - -
# Services
Each repo in the github cyber-dojo organization builds a single docker image.
The main kubernetes backed https://cyber-dojo.org uses:

- [![CircleCI](https://circleci.com/gh/cyber-dojo/custom-start-points.svg?style=svg)](https://circleci.com/gh/cyber-dojo/custom-start-points) [custom-start-points](https://github.com/cyber-dojo/custom-start-points) - serves the custom start-points
- [![CircleCI](https://circleci.com/gh/cyber-dojo/custom-chooser.svg?style=svg)](https://circleci.com/gh/cyber-dojo/custom-chooser) [custom-chooser](https://github.com/cyber-dojo/custom-chooser) - an html page to choose a custom start-point when creating a custom exercise.
- [![CircleCI](https://circleci.com/gh/cyber-dojo/exercises-start-points.svg?style=svg)](https://circleci.com/gh/cyber-dojo/exercises-start-points) [exercises-start-points](https://github.com/cyber-dojo/exercises-start-points) - serves the exercises start-points
- [![CircleCI](https://circleci.com/gh/cyber-dojo/languages-start-points.svg?style=svg)](https://circleci.com/gh/cyber-dojo/languages-start-points) [languages-start-points](https://github.com/cyber-dojo/languages-start-points) - serves the languages start-points
- [![CircleCI](https://circleci.com/gh/cyber-dojo/avatars.svg?style=svg)](https://circleci.com/gh/cyber-dojo/avatars) [avatars](https://github.com/cyber-dojo/avatars) - serves the avatar names and images.
- [![CircleCI](https://circleci.com/gh/cyber-dojo/creator.svg?style=svg)](https://circleci.com/gh/cyber-dojo/creator) [creator](https://github.com/cyber-dojo/creator) - creates exercises (group and individual) and gives them unique ids.
- [![CircleCI](https://circleci.com/gh/cyber-dojo/differ.svg?style=svg)](https://circleci.com/gh/cyber-dojo/differ) [differ](https://github.com/cyber-dojo/differ) - diffs two sets of files
- [![CircleCI](https://circleci.com/gh/cyber-dojo/puller.svg?style=svg)](https://circleci.com/gh/cyber-dojo/puller) [puller](https://github.com/cyber-dojo/puller) - pulls the latest images named in [custom-start-points](https://github.com/cyber-dojo/custom-start-points) and [languages-start-points](https://github.com/cyber-dojo/languages-start-points).
- [![CircleCI](https://circleci.com/gh/cyber-dojo/nginx.svg?style=svg)](https://circleci.com/gh/cyber-dojo/nginx) [nginx](https://github.com/cyber-dojo/nginx) - web-proxy, security, images (jpg) cache, and service routing.
- [![CircleCI](https://circleci.com/gh/cyber-dojo/runner.svg?style=svg)](https://circleci.com/gh/cyber-dojo/runner) [runner](https://github.com/cyber-dojo/runner) - runs the tests and returns a `[stdout,stderr,status,timed_out,colour]` tuple.
- [![CircleCI](https://circleci.com/gh/cyber-dojo/saver.svg?style=svg)](https://circleci.com/gh/cyber-dojo/saver) [saver](https://github.com/cyber-dojo/saver) - persists exercises and all code/test files in a host dir volume-mounted to `/cyber-dojo`.
- [![CircleCI](https://circleci.com/gh/cyber-dojo/web.svg?style=svg)](https://circleci.com/gh/cyber-dojo/web) [web](https://github.com/cyber-dojo/web) - rails web-server (a monolith slowly being 'Strangler Figged').
- [![CircleCI](https://circleci.com/gh/cyber-dojo/zipper.svg?style=svg)](https://circleci.com/gh/cyber-dojo/zipper) [zipper](https://github.com/cyber-dojo/zipper) - creates tgz files for download. Currently offline.

Locally running servers also use:

- [![CircleCI](https://circleci.com/gh/cyber-dojo/commander.svg?style=svg)](https://circleci.com/gh/cyber-dojo/commander) [commander](https://github.com/cyber-dojo/commander) - receives commands from the [cyber-dojo](https://github.com/cyber-dojo/commander/blob/master/cyber-dojo) shell script
- [![CircleCI](https://circleci.com/gh/cyber-dojo/versioner.svg?style=svg)](https://circleci.com/gh/cyber-dojo/versioner) [versioner](https://github.com/cyber-dojo/versioner) - holds consistent sets of image tags for all cyber-dojo services

- - - -
# Image dependencies

![Image Dependency Graph](dev/image_dependency_graph.png?raw=true "image dependency graph")

- - - -
# Domain model

![Domain model](dev/domain_model.png?raw=true "domain model")

![cyber-dojo.org home page](https://github.com/cyber-dojo/cyber-dojo/blob/master/shared/home_page_snapshot.png)
