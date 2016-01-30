# TypedJQ-rails

This gem is [**Typed.js**](https://github.com/mattboldt/typed.js) for rails. 

[View the live demo](http://www.mattboldt.com/demos/typed-js/) and you'll know how awsome it is, let's use it now! :sunglasses:

## Installation

#### 1. Add this line to your `Gemfile`:

```ruby
gem 'typedjq-rails'
```

And then `$ bundle` it, or install it yourself as:

    $ gem install typedjq-rails

#### 2. Add require to your `application.js`

```javascript
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
...
//= require typed
//= require turbolinks
```

## Usage

**HTML tags** [:speech_balloon:](https://github.com/mattboldt/typed.js/tree/master#html-tags)
```coffeescript
# Example in coffeescript
$(".yourelement").typed
    string: ["Typed.js is a <strong>jQuery</strong> plugin."]
    contentType: 'html' # or 'text'
```

**Strings from static HTML (SEO Friendly)** [:speech_balloon:](https://github.com/mattboldt/typed.js/tree/master#strings-from-static-html-seo-friendly)
```coffeescript
# Example in coffeescript
$("#your-typed-bar").typed
    stringsElement: $("#your-typed-strings")
```
And you must wrap each string in the `typed-strings` div with a `<p>`
```haml
/ Example in haml
#your-typed-strings
    %p= "Typed.js is a <strong>jQuery</strong> plugin."
    %p= "It <em>types</em> out sentences."
%span#your-typed-bar
```

**Line Breaks** [:speech_balloon:](https://github.com/mattboldt/typed.js/tree/master#line-breaks)
* contentType: 'html'
```coffeescript
# Example in coffeescript
$(".yourelement").typed
    strings: ["Sentence with <br>line break."]
```

* contentType: 'text'

Use `white-space: pre` in your typed text element, and then `\n` when typing out the strings.
```haml
/ Example in haml
%span#yourelement{ style: "white-space:pre" }
```
```coffeescript
# Example in coffeescript
$("#yourelement").typed
    strings: ["Sentence with \n line break."]
```

**Type Pausing** [:speech_balloon:](https://github.com/mattboldt/typed.js/tree/master#type-pausing)
```coffeescript
# Example in coffeescript
$("#yourelement").typed
    strings: ["First ^1000 sentence.", "Second sentence."]
    # Waits 1000ms after typing "First"
```

**Customization** [:speech_balloon:](https://github.com/mattboldt/typed.js/tree/master#customization)
```coffeescript
# Example in coffeescript
$("#yourelement").typed
    strings: ["First sentence.", "Second sentence."]
    
    # Optionally use an HTML element to grab strings from (must wrap each string in a <p>)
    stringsElement: null
    
    # typing speed
    typeSpeed: 0
    
    # time before typing starts
    startDelay: 0
    
    # backspacing speed
    backSpeed: 0
    
    # time before backspacing
    backDelay: 500
    
    # loop
    loop: false
    
    # false = infinite
    loopCount: false
    
    # show cursor
    showCursor: true
    
    # character for cursor
    cursorChar: "|"
    
    # attribute to type (null == text)
    attr: null
    
    # either html or text
    contentType: 'html'
    
    # call when done callback function
    callback: function() {}
    
    # starting callback function before each string
    preStringTyped: function() {}
    
    # callback for every typed string
    onStringTyped: function() {}
    
    # callback for reset
    resetCallback: function() {}
```

And if you really want to get more custom, please check [**Super Custom**](https://github.com/mattboldt/typed.js/tree/master#get-super-custom) in Typed.js.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
