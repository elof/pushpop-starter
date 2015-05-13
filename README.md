# pushpop-starter

This is a starter repository for creating [Pushpop](https://github.com/pushpop-project/pushpop) projects!

## Get Started

### Prerequisites

This guide is going to assume you have these things installed.

- Ruby
- Bundler

### Install

1. [Download](https://github.com/pushpop-project/pushpop-starter/archive/master.zip) this starter project
2. Unzip the package and place the pushpop-starter folder wherever you want it
3. Open a terminal, and `cd` to your pushpop-starter repo
4. `bundle install`
5. To make sure everything is working, run `pushpop jobs:run_once --file=jobs/example_job.rb` - you should not see any errors.
6. Start creating your jobs!

### Creating Jobs

There is an [example job](jobs/example_job.rb) in this repo that can provide some structure for you to get started. You can either delete that job and start fresh, or rename it, start editing, and get rolling.

If you want some more information about all of the different things you can do in a pushpop job, checkout the [Pushpop README](https://github.com/pushpop-project/pushpop#quickstart).
