setwd("C:\\Users\\it24510004\\Desktop\\Lab05")
DeliveryTimes <- read.table("Exercise - Lab 05.txt", header = TRUE)
# View first few rows
head(DeliveryTimes)

# Extract the column
times <- DeliveryTimes$Delivery_Time_.minutes.
# 2. Histogram with 9 class intervals (20–70), right-open
breaks <- seq(20, 70, length.out = 10)   # 9 intervals
hist(times, breaks = breaks, right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "skyblue", border = "black")
# 3. Comment on shape:
# --> Check the histogram visually.
# If bars are fairly balanced around the center → symmetric/bell-shaped.
# If bars extend more to the right → right-skewed.
# If bars extend more to the left → left-skewed.


# 4. Cumulative frequency polygon (Ogive)
h <- hist(times, breaks = breaks, right = FALSE, plot = FALSE)
cumfreq <- cumsum(h$counts)

# Use class upper limits (breaks[-1]) on x-axis
plot(h$breaks[-1], cumfreq, type = "o", col = "red",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")
i
