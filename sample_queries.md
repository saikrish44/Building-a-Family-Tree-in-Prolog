# Sample Queries and Expected Output

1. Who are the children of John?

``` bash
?- parent(john, X).
```

### Output

![](ScreenShots/1.png)

2. Who are the siblings of Paul?

``` bash
?- sibling(paul, X).
```

### Output

![](ScreenShots/2.png)

3. Who are the grandparents of Mike?

``` bash
?- grandparent(X, mike).
```

### Output

![](ScreenShots/3.png)

4. Is Mike a cousin of Chris?

``` bash
?- cousin(mike, chris).
```

### Output

![](ScreenShots/4.png)

5. Who are all descendants of John?

``` bash
?- descendant(X, john).
```

### Output

![](ScreenShots/5.png)