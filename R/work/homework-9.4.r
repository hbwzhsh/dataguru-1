#9.4
dat = read.table(textConnection(
  'X1  X2  X3  X4  X5
1  99  94  93 100 100
2  99  88  96  99  97
3 100  98  81  96 100
4  93  88  88  99  96
5 100  91  72  96  78
6  90  78  82  75  97
7  75  73  88  97  89
8  93  84  83  68  88
9  87  73  60  76  84
10  95  82  90  62  39
11  76  72  43  67  78
12  85  75  50  34  37'), header = TRUE)


fa<-factanal(~., factors=2, data=dat)