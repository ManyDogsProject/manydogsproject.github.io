---
layout: single
title: "Title Strip Test Post"
feature_row:
  - image_path: assets/images/manydogs_small.jpeg
    alt: "placeholder image 1"
    title: "Placeholder 1"
    excerpt: "This is some sample content that goes here with **Markdown** formatting."
  - image_path: /assets/images/manydogs_small.jpeg
    image_caption: "Image courtesy of [Unsplash](https://unsplash.com/)"
    alt: "placeholder image 2"
    title: "Placeholder 2"
    excerpt: "This is some sample content that goes here with **Markdown** formatting."
    url: "#test-link"
    btn_label: "Read More"
    btn_class: "btn--primary"
  - image_path: /assets/images/manydogs_small.jpeg
    title: "Placeholder 3"
    excerpt: "This is some sample content that goes here with **Markdown** formatting."
gallery:
  - image_path: /assets/images/manydogs_small.jpeg
    alt: "placeholder image 1"
    title: "Image 1 title caption"
  - image_path: /assets/images/manydogs_small.jpeg
    alt: "placeholder image 2"
    title: "Image 2 title caption"
  - image_path: /assets/images/manydogs_small.jpeg
    alt: "placeholder image 3"
    title: "Image 3 title caption"

---

# Title Override

{% include gallery caption="This is a sample gallery with **Markdown support**." %}

This should have some content.

{% include feature_row id="intro" type="center" %}

{% include feature_row %}
