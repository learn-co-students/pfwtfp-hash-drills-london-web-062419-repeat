# Hash Drills

## Learning Goals

- Access specific data in `Hash`es
- Modifying data in `Hash`es
- Perform operations on `Hash`es guided by tests

## Introduction

We've discussed a few different ways that `Hash`es can be created and how useful
they are in storing and retrieving associated data with ease. In this lesson,
we're going to practice accessing and modifying `Hash`es.

## Access Specific Data from `Hash`es

We're going to host a dinner party! We have a list of nutritious ingredients we
will be using to make dinner, but we want to prepare separate dishes for guests
with dietary restrictions: vegetarian, ketogenic, and mediterranean.

Here is our full list of ingredients:

```ruby
shopping_list = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
```

We will have to make sure only some of these items are used in our special
dishes. Since our recipes will require some attention to detail, we're going to
write methods that filter out the appropriate content.

We don't want to modify our original list, instead creating _new_ `Hash`es to
represent the 3 separate ingredients lists for our guests with dietary
restrictions.

## Instructions

In `lib/hash_drills.rb`, we've got a method, `shopping_list`, that returns a
`Hash` of our main shopping list. Your first task is to write three methods that
return `Hash`es with only the appropriate values:

`vegetarian_ingredients`: Vegetarian dishes cannot include meat, fish. While
some vegetarians are okay with eggs, best to leave them off as well to be safe.

`ketogenic_ingredients`: Ketogenic dishes have very few carbs and sugars, and
cannot include grains, fruits, or sweets. Cheese is great for keto, but not
milk or yogurt. Also, leave out the beans. Return an ingredients list without
these items.

`mediterranean_ingredients`: For mediterranean dishes, we can _only_ include
chicken, fish, nuts, yogurt, cheese, fruits, vegetables, and grains.

After writing each method, run `learn` to confirm your solutions before
continuing.

## Late Additions to the Party

#### Vegan Guest

It turns out you've got a last minute addition to your guest list: your vegan
friend is coming as well! We'll need to prepare a `vegan_ingredients` list.
However, vegan diets are similar to vegetarian diets, so rather than write a
method that filters from from our original list, let's use
`vegetarian_ingredients`. Write a method that uses the `Hash` returned by
`vegetarian_ingredients`, removes all dairy and returns a new `Hash`.

#### Allergens

You found a great recipe online for sweet and salty party nuts, and are
eager to try it out on your guests. However, a dear friend RSVP'd saying she may
or may not be able to make it. She has a severe nut allergy, and if she
is able to come, you will need to modify _all_ of your ingredients lists to make
sure there are no nuts in anything.

Write a method `remove_allergens` that takes in any **one** of our ingredients
`Hash`es as an argument, and returns a new hash with nuts removed.

## Conclusion

There are so many things to do to get ready for our party. With a little help
from Ruby `Hash`es, though, we've got our lists of ingredients and can start
preparing our menu! The guests will be elated. Bon appetit!

## Resources

- [Hashes]

[hashes]: https://ruby-doc.org/core-2.5.1/Hash.html
