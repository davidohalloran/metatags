# Metatags

I wrote this out of annoyance at all the other metatag generation gems there are out there. They all, or all that I could find, either mess the attributes you're providing or limit the tags that you can create. What the hell? I just want to create some open graph tags.

Use add_meta and pass a hash of whatever attributes you want the metatag to have. The attributes are passed to Rails' tag helper to generate the meta tag. Simples.

```
gem install 'metatags'
```

In your controller...

```
add_meta :property => 'og:title', :content => 'Lorem Ipsum'
```

In your layout...

```
<%= metatags %>
```

What you get...

```
<meta content="Lorem Ipsum" property="og:title" />
```

#Lazy evaluation

You can optionally pass a lambda to add_meta which will be evaluated in context of the view, this is useful when you need to access view helpers.

```
add_meta { {:property => 'og:image', :content => path_to_image('image.jpg')} }
```

This could also be written like:

```
add_meta({:property => 'og:image'}) { {:content => path_to_image('image.jpg')} }
```

The hash returned from the block gets merged with the set of attributes passed to the method.