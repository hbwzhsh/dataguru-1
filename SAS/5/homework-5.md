数据分析与SAS 第五周作业 - 张丹(11)
========================================================

阅读作业 
1 阅读薛毅书或者任何一本概率统计的教材，理解基本的概率统计概念，特别是概率密度函数和概率分布函数。了解常用的正态分布，t分布，F分布的函数表达式。特别强调，要充分理解“总体”和“样本”的区别 
2 阅读薛毅书关于常用统计量的部分（第3章3.1节），了解这些统计量分别是怎样计算的，以及反映了何种统计意义？ 
3 建议大家自学一下latex，用来表达数学公式比较方便，dataguru可以支持latex代码 

书面作业 
1 参照本周课程幻灯片封面“赌大小”的赌博游戏，通过计算各种概率说明，只要长久玩下去，玩家是必定不会赢的，并且指出这个游戏对于玩家的最佳赌博策略。 
2 产生一个数据集test1，内有4个变量x1、x2、x3、x4，其中x1为正态分布的随机数，x2为均匀分布的随机数，x3为x1和x2的均值（要求用means函数计算），x4为x1和x2中较大的数。一共有1000个观测行。用means过程计算x1和x2的均值、标准差、变异系数、偏度。 

互动作业 
本周的互动主题自由。可以围绕本周课程的数学知识和SAS过程用法展开，也可以讨论latex的使用。 
要求每位同学至少发2篇主题（数学讨论可以发到数据分析与数据挖掘技术版，SAS讨论发到SAS中国用户组版，latex使用的讨论发到新开的TeX版，3个板块合并计算发帖量），至少参与5个上述主题的讨论（回帖）。 
注意在Dataguru课程平台上，新增加“互动”功能标签，大家进入后可以看到本周的互动要求（板块，时间段，数量等），以及你现在的完成进度情况。 
本周的书面作业和互动作业都纳入罚扣考核范围，请大家注意按时按质完成！

## 第一题 
<img src="bigsmall.png"/>

此题可以通过一个成本函数实现。设计x,y两个参数，x是下注数，y是收入。
设方程y=f(x)的成本函数，从而找到x组合下注，收入最大的可能。

由于f(x)是个优化的成本函数，经过多次实验并没有找到合适的方程式来描述。
因此方程式稍后再给出。

下面给出计算的概念：

1. 三个骰子的数字总和是4和7的，赔率/胜率最少，则说明玩家受益最大。
2. 三个骰子的数字总和，比大小，赔率/胜率最大，则说明玩家受益最小。

        name  赔率    赔率(小数)  胜率(小数) 赔率/胜率
        -------- --------  --------   --------  -------- 
        19    sum7    12 0.083333333 0.06944444 1.200000
        26   sum14    12 0.083333333 0.06944444 1.200000
        20    sum8     8 0.125000000 0.09722222 1.285714
        25   sum13     8 0.125000000 0.09722222 1.285714
        30 count12     5 0.200000000 0.15277778 1.309091
        31 count13     5 0.200000000 0.15277778 1.309091
        32 count14     5 0.200000000 0.15277778 1.309091
        33 count15     5 0.200000000 0.15277778 1.309091
        34 count16     5 0.200000000 0.15277778 1.309091
        35 count23     5 0.200000000 0.15277778 1.309091
        36 count24     5 0.200000000 0.15277778 1.309091
        37 count25     5 0.200000000 0.15277778 1.309091
        38 count26     5 0.200000000 0.15277778 1.309091
        39 count34     5 0.200000000 0.15277778 1.309091
        40 count35     5 0.200000000 0.15277778 1.309091
        41 count36     5 0.200000000 0.15277778 1.309091
        42 count45     5 0.200000000 0.15277778 1.309091
        43 count46     5 0.200000000 0.15277778 1.309091
        44 count56     5 0.200000000 0.15277778 1.309091
        22   sum10     6 0.166666667 0.12500000 1.333333
        23   sum11     6 0.166666667 0.12500000 1.333333
        21    sum9     6 0.166666667 0.11574074 1.440000
        24   sum12     6 0.166666667 0.11574074 1.440000
        3  triple1   150 0.006666667 0.00462963 1.440000
        4  triple2   150 0.006666667 0.00462963 1.440000
        5  triple3   150 0.006666667 0.00462963 1.440000
        6  triple4   150 0.006666667 0.00462963 1.440000
        7  triple5   150 0.006666667 0.00462963 1.440000
        8  triple6   150 0.006666667 0.00462963 1.440000
        16    sum4    50 0.020000000 0.01388889 1.440000
        29   sum17    50 0.020000000 0.01388889 1.440000
        15  triple    24 0.041666667 0.02777778 1.500000
        18    sum6    14 0.071428571 0.04629630 1.542857
        27   sum15    14 0.071428571 0.04629630 1.542857
        9  double1     8 0.125000000 0.07407407 1.687500
        10 double2     8 0.125000000 0.07407407 1.687500
        11 double3     8 0.125000000 0.07407407 1.687500
        12 double4     8 0.125000000 0.07407407 1.687500
        13 double5     8 0.125000000 0.07407407 1.687500
        14 double6     8 0.125000000 0.07407407 1.687500
        17    sum5    18 0.055555556 0.02777778 2.000000
        28   sum16    18 0.055555556 0.02777778 2.000000
        1      big     1 1.000000000 0.48611111 2.057143
        2    small     1 1.000000000 0.48611111 2.057143
    
3. 按赔率计算，庄家优势很明显。无论玩家怎么下注庄家都会赢钱。因为是多名玩家一起下注，就算少数玩家赢了，其他的玩家还是会输钱的。

        
        下注     闲家胜出方法	                     赔率（澳门/外国）	  出现机会	  期望值	   庄家优势
        -----    --------------------------        ----------------- --------    --------     --------
        大	     总点数为:11至17(遇围骰庄家通吃)	 1 赔 1	            48.61%	-0.0278	        2.78%
        小	     总点数为:4至10(遇围骰庄家通吃)	   1 赔 1	            48.61%	-0.0278	        2.78%
        两颗骰子 猜中两颗骰子的组合             	 1 赔 5	            13.89%	-0.1667	        16.67%
        双骰	   两颗或以上点数相同,并为指定之点数 1赔8/1赔10	        7.41%	  -0.3333/-0.1852	33.33%/18.52%
        围骰	   点数全同，并为指定之点数          1赔150/1赔180	      0.463%	-0.3009/-0.162	30.09%/16.2%
        全围     围一至围六任何一种	               1赔24/1赔30	        2.78%	  -0.3056/-0.1389	30.56%/13.89%


## 第二题

    libname homework "D:\dataguru\SAS\5";
    DATA homework.ch2;
      retain _seed_ 0;
    	mu=5;
    	sigma=2;
    	a=0;
    	b=10;
    	do _i_ =1 to 1000;
    	x1 = mu+sigma*rannor(_seed_);
    	x2 = a+(b-a)*ranuni(_seed_);
    	x3 = mean(of x1,x2);
    	x4 = max(of x1,x2);
    	output;
    	end;
    	drop _seed_ _i_ mu sigma a b;
    RUN;
    PROC print data = homework.ch2;
    RUN;
    PROC MEANS DATA=homework.ch2 MAXDEC=3 N MEAN STD CV SKEWNESS;
    	VAR x1 x2;
    RUN;

***
### 1) X1,X2,X3,X4结果显示, 只截取前10条显示

    SAS 系统   2012年08月28日 星期二 上午11时58分20秒  63
    
    Obs       x1         x2         x3         x4
    1    6.48599    4.22276    5.35438    6.48599
    2    4.86542    0.36775    2.61659    4.86542
    3    5.02257    6.19965    5.61111    6.19965
    4    2.92502    8.38169    5.65336    8.38169
    5    7.59837    0.24361    3.92099    7.59837
    6    6.43504    6.07325    6.25414    6.43504
    7    6.30124    5.43195    5.86659    6.30124
    8    5.65557    7.71237    6.68397    7.71237
    9    4.93636    1.75898    3.34767    4.93636
    10    5.55561    4.91061    5.23311    5.55561

### 2) x1和x2的均值、标准差、变异系数、偏度。

    SAS 系统   2012年08月28日 星期二 上午11时58分20秒  64
    
                                   MEANS PROCEDURE
    
      变量      N       均值          标准差        变异系数            偏度
     --------------------------------------------------------------------
     x1       1000      5.030           1.988          39.515           0.030
     x2       1000      4.999           2.916          58.335          -0.028
     --------------------------------------------------------------------