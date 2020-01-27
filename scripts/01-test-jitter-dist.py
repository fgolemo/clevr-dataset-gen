import random
import matplotlib.pyplot as plt

def rand (L):
    return 2.0 * L * (random.random() - 0.2)


points = []
for i in range(100):
    points.append(rand(1))

print (points)

plt.hist(points, bins=10)
plt.show()
