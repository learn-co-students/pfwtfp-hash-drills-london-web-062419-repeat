# Hash Drills

## Learning Goals

- Access Data In `Hash`es
- Modifying Data In `Hash`es
- Perform operations on `Hash`es guided by tests

## Introduction

We've discussed a few different ways that `Hash`es can be created and how useful
they are in storing and retrieving associated data with ease. In this lessons
we're going to do exercises that will help us practice working with `Hash`es.

## Perform Operations on `Hash`es Guided by Tests

- Analyze a `Hash` and identify existing keys and their values
- Build out new `Hash`es by harvesting multiple nested keys
- Modify an existing `Hash`

We're going to host a dinner party! We have a shopping list of nutritious
ingredients, but we are going to prepare separate dishes for guests with dietary
restrictions: vegetarian, ketogenic, and mediterranean.

```ruby
shopping_list = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken (white)", "fish (white)", "steak (red)"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
```

## Building New `Hash`es

Since these recipes will require some attention to detail, we're going to write
methods that will build 3 `Hash`es to represent 3 separate shopping lists for
guests with dietary restrictions.

- `shopping_list` - To have a point of reference for each new list, create a
  method that only returns the shopping list as it already exists above.

- `vegetarian_list` - For the vegetarian dishes, the ingredients will contain:
  sweets, eggs, nuts, beans, vegetables, fruits, and grains

* `ketogenic_list` - For the ketogenic dishes, the ingredients will contain:
  eggs, nuts, beans, vegetables, dairy, and meat

* `mediterranean_list` - For the mediterranean dishes, the ingredients will
  contain: nuts, vegetables, yogurt & cheese, and white meat (chicken & fish),
  fruits, and grains

## Modifying Existing `Hash`es

Now that we've sorted out mostly universal ingredients between our shopping
lists, to be sure to accommodate all guests, we're going to modify our
vegetarian and mediterranean lists, building out 2 additional methods to do so.

- `vegan_list` - Remove dairy and eggs from our vegetarian `Hash` to create a 4th
  list for vegan.
- `mediterranean_list_with_wine` - Takes our existing mediterranean list and
  adds wine into the `Hash` as a type of `:sweets`--those guests love wine!

## Conclusion

You should now have a total of 4 separate `Hash`es with a combination of the
original list of ingredients, plus added wine to your mediterranean. Your guests
will be elated. Bon appetit!

## Resources

- [Hashes]

[`hash`es]: https://ruby-doc.org/core-2.5.1/Hash.html
