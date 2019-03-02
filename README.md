# Jose Reyes Portfolio (http://reyes.xyz)

This is a portfolio website built with Swift using Vapor

![alt text](https://reyes.xyz/images/screenshots/metatag_image.png "Portfolio Screenshot")

The site is quite simple: one page with two sides: left and right. 

  - The left side contains name, photo, description, social links
  - The right side contains a carousel of portfolio items, either video (which autoplay) or photos. 
  
### Directory

```
.
├── Sources          # Swift files to run the server and render pages – the Ms & Cs in MVC
├── Resources        # Page and component templates to render data coming from the controller - the Vs in MVC.
├── Public           # Assets to render in the app, all files here are exposed public
├── Dependencies     # Dependencies needed to run the server
├── Products         # Frameworks created automatically when calling `vapor xcode`
├── Package.swift    # A package management / configuration file for vapor
├── Dockerfile       # A script for docker configuration 
└── README.md  
```

### Configuration Steps

100% of all configuration can be done by just modifying assets including three json files and any images or videos you'd like to share in the site.

```
.
├── ...
├── Public
│   ├── content            
│   |     ├── content.json  # Contains every portfolio item
│   |     ├── creator.json  # Details about you, your name and description and your socials
│   |     ├── website.json  # Details about the website, primarily for meta tags
│   └── ...                 # etc.
└── ...
```
