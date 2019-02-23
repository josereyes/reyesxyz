# Jose Reyes Portfolio

This is a portfolio website built with Swift using Vapor

The site is quite simple: one page with two sides, left and right. 

  - The left side contains name, photo, description, social links
  - The right side contains a carousel of portfolio items, either video (which autoplay) or photos. 
  
  This site is 100% content driven, there is no code change required to add or remove portfolio items

### Directory

```
.
├── Sources          # All Swift files to run the server and render pages – the Ms & Cs in MVC
├── Resources        # All page and component templates to render data coming from the controller - the Vs in MVC.
├── Public           # All assets to render in the app, all files here are exposed public e.g. "/images/buttons/arrowleft.png"
├── Dependencies     # All dependencies needed to run the server, installed automatically when calling `vapor xcode`
├── Products         # All frameworks created automatically when calling `vapor xcode`
├── Package.swift    # A package management / configuration file for vapor, this sets which dependences are necessary
├── Dockerfile       # A script for docker configuration 
└── README.md  
```

### Configuration Steps

100% of all configuration can be done by just modifying assetds including three json files and any images or videos you'd like to share in the site 

```
.
├── ...
├── Public
│   ├── content            
│    |     ├── content.json  # Contains every portfolio item
│    |     ├── creator.json  # Details about you, your name and description and your socials
│    |     ├── website.json  # Details about the website, primarily for meta tags
│   └── ...                 # etc.
└── ...
```
