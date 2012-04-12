Hey Ruby‽
=========

***NOTE***: Heyruby is still in extreme infancy, so please refrain from
Tweeting or submitting anything anywhere until I can settle a few more things.
Direct feedback to <steven@nuclearsandwich.com> is, of course, welcome!

Good programmers are like scientists. When they want to answer a question They
form a hypothesis, then verify it with an experiment. Rubyists have the
experimentation phase down, but we tend not to hypothesize fully.  This gem
helps people new to Ruby by prompting them for a hypothesis before returning the
result of their experiment.

Installation
------------

This gem isn't really meant to go in your Gemfile, it's only utility is in
nagging you to think a bit harder.

Install it yourself as:

    $ gem install heyruby

Usage
-----

Got a question? Ask Ruby!
I wonder what the line `%w[foo bar baz].map{ |s| s.split /[aeiou]/ }.flatten`
does.

    $ heyruby
    Hey Ruby‽> %w[foo bar baz].map{ |s| s.split /[aeiou]/ }.flatten
    What do you think the result of
    ```
    %w[foo bar baz].map{ |s| s.split /[aeiou]/ }.flatten

    ```
    will be? (Type . on a line by itself when done)
    | I should get a single array containing the strings ["f", "b", "r", "b",
    | "z"].
    Were you right?
    Try somthing else>


Origin of the Name
------------------

When I was first learning Ruby in 2009 and 2010, my mental process for doing so
went along the lines of "Hey Ruby, what's 2 + 2?". This was so pervasive that
for some time I had `alias heyruby='irb'` in my bashrc. I hope that heyruby will
help people new to Ruby to gain the same comfort and casual familiarity with the
Ruby language that I have been developing since those early days.

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
