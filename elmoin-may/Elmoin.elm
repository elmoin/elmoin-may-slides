module Elmoin where

import String
import Slides
import Html exposing (Html)


main : Signal Html
main =
  mySlides
  |> String.split "\n\n\n"
  |> Slides.fromList
  |> Slides.start


mySlides : String
mySlides = """
# Real Life Elm

by Gregor Große-Bölting


## Who are you?

JavaScript?

Haskell?

Elm?


# Who am I?

@himilkon

github.com/ggb

M. A. Philosophy and Computer Science

FP Newbie


# graphomate

![graphomate gang](img/graphomate.JPG)


# graphomate Products

Extensions for SAP Design Studio and Excel

Mostly (Vanilla) JavaScript, but also TypeScript, C# ...

But: Two new developments in Elm!


## SAP Business Objects Design Studio: Live Demo!


# Why is Elm great (for us)?

Hides unreliable 3rd-party APIs

Easy Integration

Fast prototyping and overall development of new features


## What do I miss?

Dead Code Elimination (Closure-Compiler support in 0.17?)

No breaking changes between version changes

Higher order abstractions (the M-word..., sometimes)


# Do you use Elm in production?

Share your experience :)

"""
