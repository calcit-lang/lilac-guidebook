# `tuple+`

expects items of exact rules and order:

```cirru
tuple+ $ [] (number+) (string+) (boolean+)
```

### Options

check if size exactly the same:

```cirru
{}
  :check-size? true
```
