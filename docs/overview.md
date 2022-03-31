# Lilac: validation toolkits for Calcit

### Usage

```cirru
ns demo
  :require
    [] lilac.core :refer $ validate-lilac number+ string+ or+

validate-lilac 1 (number+)

validate-lilac 1
  or+ $ [] (number+) (string+)
```

If validation is passed, it returns:

```cirru
{}
  :ok? true
```

or the return value would contain informations why it's not correct:

```cirru
{}
  :ok? false
  :data x
  :rule x
  :coord $ []
  :message "|failure reason..."
  :formatted-message "|formatted failure reason..."
```
