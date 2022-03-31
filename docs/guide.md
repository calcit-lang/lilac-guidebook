# Guide

#### APIs

Supported APIs:

```cirru
ns demo
  :require $ lilac.core :refer $ validate-lilac deflilac register-custom-rule!
    , optional+ keyword+ boolean+ number+ string+ custom+ tuple+
    , list+ record+ enum+ not+ and+ map+ any+ set+ nil+ or+ is+
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

returns `({} $ :ok? true)` when validation passed, or `({} (:ok? false) (:message |SOME_REASONS))`.

### Naming

Since Lilac has APIs similar to `number` `or` `and` `vector`, which are core functions/variables in Calcit. I have to add prefix/suffix in names. Lilac uses suffix of `+` in APIs, inspired by [lilac](assets/lilac-720x480.jpeg).
