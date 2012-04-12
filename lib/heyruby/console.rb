# encoding: utf-8
require "pry"

module Heyruby
  class Console
    def initialize
      Pry.config.should_load_rc = false
      Pry.config.prompt = [method(:normal_prompt), method(:wait_prompt)]
      Pry.hooks.add_hook :after_read, :prompt_for_hypothesis do |line, pry|
        prompt_for_hypothesis line, pry
      end
      @pry = Pry
    end

    def normal_prompt obj, nest_level, pry
      if @hypothesis
        @hypothesis = nil
        "Were you right?\nTry somthing else> "
      else
        "Hey Ruby‽> "
      end
    end

    def wait_prompt obj, nest_level, pry
      "Hey Ruby‽* "
    end

    def prompt_for_hypothesis line, pry
      print %Q<What do you think the result of
```
#{CodeRay.scan(line, :ruby).term}
```
will be? (Type . on a line by itself when done)
| >
      @hypothesis = []
      while (str = readline.chomp!) != "."
        print "| "
        @hypothesis << str
      end
    end

    def start
      @pry.start
    end

    def self.start
      new.start
    end
  end
end

