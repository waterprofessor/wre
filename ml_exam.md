# Machine Learning Exam 
Question 1
----------
Suppose you are working on stock market prediction. You would like to predict whether or not a certain company will declare bankruptcy within the next 7 days (by training on data of similar companies that had previously been at risk of bankruptcy). Would you treat this as a classification or a regression problem?

* Regression

* Classification


Question 2
----------
Some of the problems below are best addressed using a supervised

learning algorithm, and the others with an unsupervised

learning algorithm. Which of the following would you apply

supervised learning to? (Select all that apply.) In each case, assume some appropriate

dataset is available for your algorithm to learn from.

* Examine a web page, and classify whether the content on the web page should be considered "child friendly" (e.g., non-pornographic, etc.) or "adult."

* Given data on how 1000 medical patients respond to an experimental drug (such as effectiveness of the treatment, side effects, etc.), discover whether there are different categories or "types" of patients in terms of how they respond to the drug, and if so what these categories are.

* In farming, given data on crop yields over the last 50 years, learn to predict next year's crop yields.

* Given a large dataset of medical records from patients suffering from heart disease, try to learn whether there might be different clusters of such patients for which we might tailor separate treatments.


Question 3
----------
Which of these is a reasonable definition of machine learning?

* Machine learning is the field of allowing robots to act intelligently.

* Machine learning is the field of study that gives computers the ability to learn without being explicitly programmed.

* Machine learning learns from labeled data.

* Machine learning is the science of programming computers.


Question 4
----------
Consider the following training set of m=4 training examples:

x | y 
--- | --- 
1 | 0.5
2 | 1
4 | 2
0 | 0

Consider the linear regression model h<sub>??</sub>(x)=??<sub>0</sub>+??<sub>1</sub>x. What are the values of ??<sub>0</sub> and ??<sub>1</sub> that you would expect to obtain upon running gradient descent on this model? (Linear regression will be able to fit this data perfectly.)

* ??<sub>0</sub>=0.5,??<sub>1</sub>=0

* ??<sub>0</sub>=0.5,??<sub>1</sub>=0.5

* ??<sub>0</sub>=1,??<sub>1</sub>=0.5

* ??<sub>0</sub>=0,??<sub>1</sub>=0.5

* ??<sub>0</sub>=1,??<sub>1</sub>=1

Question 5
----------
Let f be some function so that

f(??<sub>0</sub>,??<sub>1</sub>) outputs a number. For this problem,

f is some arbitrary/unknown smooth function (not necessarily the

cost function of linear regression, so f may have local optima).

Suppose we use gradient descent to try to minimize f(??<sub>0</sub>,??<sub>1</sub>)
as a function of ??<sub>0</sub> and ??<sub>1</sub>. Which of the

following statements are true? (Check all that apply.)

* Even if the learning rate ?? is very large, every iteration of gradient descent will decrease the value of f(??<sub>0</sub>,??<sub>1</sub>).

* If the learning rate is too small, then gradient descent may take a very long time to converge.

* If ??<sub>0</sub> and ??<sub>1</sub> are initialized at a local minimum, then one iteration will not change their values.

* If ??<sub>0</sub> and ??<sub>1</sub> are initialized so that ??<sub>0</sub>=??<sub>1</sub>, then by symmetry (because we do simultaneous updates to the two parameters), after one iteration of gradient descent, we will still have ??<sub>0</sub>=??<sub>1</sub>.

Question 6
----------
Suppose that for some linear regression problem (say, predicting housing prices as in the lecture), we have some training set, and for our training set we managed to find some ??<sub>0</sub>, ??<sub>1</sub> such that J(??<sub>0</sub>,??<sub>1</sub>)=0.

Which of the statements below must then be true? (Check all that apply.)

* For this to be true, we must have y<sup>(i)</sup>=0 for every value of i=1,2,???,m.

* Gradient descent is likely to get stuck at a local minimum and fail to find the global minimum.

* For this to be true, we must have ??<sub>0</sub>=0 and ??<sub>1</sub>=0 so that h<sub>??</sub>(x)=0

* Our training set can be fit perfectly by a straight line, i.e., all of our training examples lie perfectly on some straight line.

Question 7
----------
You run gradient descent for 15 iterations
with ??=0.3 and compute
J(??) after each iteration. You find that the
value of J(??) <b>decreases</b> quickly then levels
off. Based on this, which of the following conclusions seems
most plausible?

* Rather than use the current value of ??, it'd be more promising to try a larger value of ?? (say ??=1.0).

* Rather than use the current value of ??, it'd be more promising to try a smaller value of ?? (say ??=0.1).

* ??=0.3 is an effective choice of learning rate.

Question 8
----------
Suppose you have m=14 training examples with n=3 features (excluding the additional all-ones feature for the intercept term, which you should add). 
The normal equation is ??=(X<sup>T</sup>X)<sup>???1</sup>X<sup>T</sup>y. 
For the given values of m and n, what are the dimensions of ??, X, and y in this equation?

* X is 14??3, y is 14??1, ?? is 3??3

* X is 14??4, y is 14??4, ?? is 4??4

* X is 14??4, y is 14??1, ?? is 4??1

* X is 14??3, y is 14??1, ?? is 3??1

Question 9
----------
Suppose you have a dataset with m=50 examples and n=200000 features for each example. You want to use multivariate linear regression to fit the parameters ?? to our data. Should you prefer gradient descent or the normal equation?

* Gradient descent, since (X<sup>T</sup>X)<sup>???1</sup> will be very slow to compute in the normal equation.

* Gradient descent, since it will always converge to the optimal ??.

* The normal equation, since it provides an efficient way to directly find the solution.

* The normal equation, since gradient descent might be unable to find the optimal ??.

Question 10
----------
Which of the following are reasons for using feature scaling?

* It speeds up solving for ?? using the normal equation.

* It prevents the matrix X<sup>T</sup>X (used in the normal equation) from being non-invertable (singular/degenerate).

* It is necessary to prevent gradient descent from getting stuck in local optima.

* It speeds up gradient descent by making it require fewer iterations to get to a good solution.

Question 11
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/NeuralRepresentationQ2.png)

Question 12
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/NeuralRepresentationQ3.png)

Question 13
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/AdviceQ1.png)

Question 14
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/AdviceQ2.png)

Question 15
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/AdviceQ3.png)

Question 16
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/AdviceQ4.png)

Question 17
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/AdviceQ5.png)

Question 18
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/MachineLearningSystemDesignQ1.png)

Question 19
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/MachineLearningSystemDesignQ2.png)

Question 20
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/MachineLearningSystemDesignQ3.png)

Question 21
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/MachineLearningSystemDesignQ4.png)

Question 22
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/MachineLearningSystemDesignQ5p1.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/MachineLearningSystemDesignQ5p2.png)

Question 23
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ1p1.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ1p2.png)

Question 24
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ2p1.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ2p2.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ2p3.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ2p4.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ2p5.png)

Question 25
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ3.png)

Question 26
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ4.png)

Question 27
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/SupportVectorMachinesQ5.png)

Question 28
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/unsupervisedLearningQ1.png)

Question 29
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/unsupervisedLearningQ2.png)

Question 30
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/unsupervisedLearningQ3.png)


Question 31
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/PCAq1part1.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/PCAq1part2.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/PCAq1part3.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/PCAq1part4.png)
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/PCAq1part5.png)

Question 32
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/PCAq2.png)

Question 33
----------
![](https://github.com/mGalarnyk/datasciencecoursera/blob/master/Stanford_Machine_Learning/Week1/data/PCAq5.png)