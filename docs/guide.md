# Guide

#### APIs

Supported APIs:

```cirru
ns demo
  :require $ lilac.core :refer $ validate-lilac deflilac register-custom-rule!
    , optional+ keyword+ boolean+ number+ string+ custom+ tuple+ vector+
    , list+ record+ enum+ not+ and+ map+ any+ set+ nil+ or+ is+ dev-check
```

For example:

```cirru
validate-lilac 10 $ and+ $ []
  number+
  number+ $ {} (:min 0)

validate-lilac 10 $ or+ $ []
  number+
  string+

validate-lilac nil $ optional+ (number+)

validate-lilac :a $ enum+ $ #{} :a :b :c

validate-lilac
  {}
    :a 100
    :b $ [] |red |blue
  record+
    {}
      :a (number+)
    {}
      :exact-keys? true

deflilac lilac-good-number+ (n)
  number+ $ {}
    :min n
```

Or use a shortcut with `js/console.error`, which only runs where `js/goog.DEBUG` is true:

```clojure
dev-check 1 (number+)
```

For more details browse source code:

- https://github.com/mvc-works/lilac/blob/master/src/lilac/test.cljs
- https://github.com/mvc-works/lilac/blob/master/src/lilac/router.cljs

### Rules

Notice:

- in Lilac, a "map" with specific keys are called a "record". Use `map+` for dictionaries.

| Rule                                        | Meaning                                |
| ------------------------------------------- | -------------------------------------- |
| `(and+ [(number+) (number+ {:min 0})])`     | apply multiple rules                   |
| `(any+)`                                    | expects anything including nil         |
| `(boolean+)`                                | expects a boolean                      |
| `(enum+ #{1 2 3 "4"})`                      | expects an item from listed            |
| `(list+ (boolean+))`                        | expects a list of items                |
| `(map+ (keyword+) (number+))`               | expects a map/dict                     |
| `(nil+)`                                    | expects nil                            |
| `(number+ {:min 100})`                      | expects a number                       |
| `(optional+ (number+))`                     | expects an item or nothing             |
| `(record+ {1 (number+), 2 (number+)})`      | expects a record with specific keys    |
| `(string+)`                                 | expects a string                       |
| `(tuple+ [(number+) (string+) (boolean+)])` | expects items of exact rules and order |
| `(vector+ (boolean+))`                      | expects a vector of items              |
| `(pick-type+ {:a (record+ {:type :a})})`    | expects branches picked by type        |

Some rules got options for extending abilities:

| Rule         | Option                  | Meaning                                   |
| ------------ | ----------------------- | ----------------------------------------- |
| `any+`       | `{:some? true}`         | stop accepting `nil`s                     |
| `list+`      | `{:allow-seq? true}`    | accepts list in a lazy sequence           |
| `number+`    | `{:min 0}`              | min value                                 |
|              | `{:max 10}`             | max value                                 |
| `record+`    | `{:all-optional? true}` | mark all fields as not required           |
|              | `{:check-keys? true}`   | check keys in record obeys rules, no more |
|              | `{:exact-keys? true}`   | check all keys, no more no fewer          |
| `string+`    | `{:nonblank? true}`     | stop accepting blank strings              |
|              | `{:re #"\\d"}`          | regex for testing string                  |
| `tuple+`     | `{:in-list? true}`      | accepts list as input                     |
|              | `{:check-size? true}`   | check if size exactly the same            |
| `vector+`    | `{:allow-seq? true}`    | accepts lazy sequences as well            |
| `pick-type+` | `{:type-field :type}`   | specify a field for telling type          |

#### Custom rules

To provide `lilac.core/custom+`:

```cirru
defn method-1 (x)
  if
    and (> x 10) (< x 20)
    {}
      :ok? true
    {}
      :ok? false
      :message $ str "|expects number between 10 amd 20, got " x

validate-lilac 11 $ custom+ method-1
```

To added custom validation type called `method-2+` (something like `number+`), use an API:

```cirru
defn validate-method-2 (data rule coord)
  if
    and (> data 10) (< data 20)
    {}
      :ok? true
    {}
      :ok? false
      :data data
      :rule rule
      :coord coord
      :message $ str "|expects number between 10 amd 20, got " data

defn method-2+ ()
  {}
    :lilac-type :method-2

lilac.core/register-custom-rule! :method-2 validate-method-2

validate-lilac 11 $ method-2+
```

### Contribute to project

If you like the idea in Lilac, fork the project and develop on your own intention. This project does not accept large changes.

The project is developed with Cirru toolchains. Clojure code are compiled from `calcit.cirru`. Make sure you are using [Calcit Editor](https://github.com/Cirru/calcit-editor) if you need the fix to be merged.

### Naming

Since Lilac has APIs similar to `number` `or` `and` `vector`, which are core functions/variables in Clojure. I have to add prefix/suffix in names. Lilac uses suffix of `+` in APIs, inspired by [lilac](assets/lilac-720x480.jpeg).
