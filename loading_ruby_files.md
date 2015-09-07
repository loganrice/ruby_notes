ys To Load Ruby Files

1.
[Kernel#require_relative](http://ruby-doc.org/core-2.2.3/Kernel.html#method-i-require_relative)
2. [Kernel#require](http://ruby-doc.org/core-2.2.3/Kernel.html#method-i-require)
3. [Kernel#load](http://ruby-doc.org/core-2.2.3/Kernel.html#method-i-load)
4.
[Kernel#autoload](http://ruby-doc.org/core-2.2.3/Kernel.html#method-i-autoload)

## Kernel#require_relative
###### Benifits:
* Use when possible
* Similar to require (loads programs only once)
* Avoids errors found when running the program from other directories, which
  require hacks like modifying the $LOAD_PATH among others
```
require_relative '../lib/foo'
VS
require "#{File.dirname(__FILE__)}/../lib/foo"
```

## Kernel#require
###### Features:
* Loads exactly once, will return false if already loaded.
###### Benifits:
* Prevents programs from loading the same code unessessarily.
* Can load ruby files (among others) without their extension ".rb"
* Provides predicable loading behavior like 'load' but with the benifits of
  caching functionality that 'autoload' offers.

## Kernel#load
###### Benifits:
* In an IRB session you can make changes to the loaded file and reload the file
  without needing to close the irb session
```
load 'foo.rb'
=> true
load 'foo.rb'
=> true
```

## Kernel#autoload
I personally have not had a project that has needed this. Except indirectlty
through rails own implementation of autoload that does something similar.
##### Benifits:
* faster startup time
* delayed loading of optional dependencies
