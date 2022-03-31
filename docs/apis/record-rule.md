# `record+`

expects a record with specified keys:

```cirru
record+ $ {}
  1 (number+)
  2 (number+)
```

# Options

mark all fields as not required

```cirru
{}
  :all-optional? true
```

check keys in record obeys rules, no more:

```cirru
{}
  check-keys? true
```

check all keys, no more no fewer:

```cirru
{}
  :exact-keys? true
```
