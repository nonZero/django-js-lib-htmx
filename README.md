# HTMX Repackaged for Django

[HTMX](https://htmx.org/) packaged in a Django reusable app.


## Installation

    pip install django-js-lib-htmx

## Usage

1. Add `"js_lib_htmx"` to your `INSTALLED_APPS` setting like this::

       INSTALLED_APPS = [
           ...
           "js_lib_htmx",
           ...
       ]

2. In your template use:
   
       {% load static %}
   
      And one of:
    
       <script src="{% static "htmx/htmx.js" %}"></script>
       <script src="{% static "htmx/htmx.min.js" %}"></script>

