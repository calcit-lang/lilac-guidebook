# Custom method

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

#### Recursive data

Lilac is designed to validate recursive data, based on a "component" concept behind `deflilac`:

```cirru
ns demo
  :require $ [] lilac.core :refer $ deflilac record+ string+

deflilac lilac-tree+ ()
  record+ $ {}
    :name $ string+
    :children $ list+ $ lilac-tree+
```
