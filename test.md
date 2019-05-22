---
title: Trying Out Markdown
author: Vladi Nekolov
---

---

A section to be tested

Can we nest sections? My guess is we can't.

---

Huh?

---

Some more text in the same section, but on another line. __Some emphasis__. *Some bold stuff*.

Or the other way around. \* *f* \_\_ __f__

---

Aside from pure text, what can we do with structured documents that use the baisic markup facilities of HTML?

We can do lists. What do I need in life?

* A computer
* It should be connected to the internet
* A phone
* Music

Yeah but which one is the most important?

1. A combination of things
1. A Surface of stuff
1. A Jocular Inarticulation
1. Haydn

Nice. So sections. Lists. Basic formatting (oh, we also have ~~strike-through~~).

How about tables?

Yep

---

| First Name | Last Name | Occupation |
| - | - | - |
| Vladi | Nekolov | programmer |
| Alex | Krastev | cardiologist |
| Justin | Bieber | lousy singer |
| Amanda | Hopkins | just made her up | 

---

The nested sections are achieved __like this__:

> One level of nesting
This continues until we break out of the paragraph by inserting an empty line in the source.

>> Nested a second level. This continues also until we break out of the paragraph.

>> Or start a new one explicitly at the same level.

>>> And so on.

> F

Those are nested sections. Paragraphs of text structured in a tree of nestings. Lists can also become trees.

Things I need to do:

* Write my dissertation, for which I need to
    * Research my topic
    * Figure out the basic structure
    * Do relevant original research (heh, as if...)
    * Write the damn thing, which includes
        * writing the introduction
        * writing the main body of the text
        * writing the conclusion
* Pass all my outstanding exams, including
    * Graphics programming
    * AI
    * Java
        1. Java GUI
        2. Java Web Services

Ordered lists have a few styles:

1. with
1. arabic
1. numerals

i. with
i. small-caps
i. roman numerals

How about some code?

```haskell
--how do we flatten a tree? We can traverse it in a depth-first manner
data Tree a = Node a (Tree a) (Tree a) | Leaf a
    deriving (Eq)

--traversing the tree means transforming it to a list
traverse :: Tree a -> [a]
traverse (Leaf a) = [a]
traverse (Node a left right) = 
    a : (traverse left ++ traverse right)

instance Show a => Show (Tree a) where
    show tr = unlines $ map show (traverse tr)
```