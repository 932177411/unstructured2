# Load required libraries
library(tuneR)
library(seewave)
library(ggplot2)

# Read the audio files
audio <- readWave("C:/Users/93217/Desktop/Data acquisition/V1.wav")
audio1 <- readWave("C:/Users/93217/Desktop/Data acquisition/V6.wav")
str(audio)
str(audio1)
# 绘制波形图
plot(audio)

# 绘制频谱图
spectrum(audio, plot = TRUE)
#将第一个声道（FL）的数据用于绘制波形图
data <- as.data.frame(audio@.Data[, "FL"])
colnames(data) <- "Amplitude"
data$Time <- seq(1, length(audio@.Data[, "FL"])) / audio@samp.rate

# 绘制波形图
ggplot(data, aes(x = Time, y = Amplitude)) +
  geom_line() +
  labs(x = "Time", y = "Amplitude", title = "Waveform")

# 计算频谱
spec <- spectrum(audio, plot = FALSE)

# 将频谱数据转换为数据框
spec_data <- data.frame(Frequency = spec$freq, Magnitude = spec$spec)

# 绘制频谱图
ggplot(spec_data, aes(x = Frequency, y = Magnitude.1)) +
  geom_line() +
  labs(x = "Frequency", y = "Magnitude", title = "Frequency Spectrum")
ggplot(spec_data, aes(x = Frequency, y = Magnitude.2)) +
  geom_line() +
  labs(x = "Frequency", y = "Magnitude", title = "Frequency Spectrum")
###########################################
# 提取左声道和右声道音频数据
left_channel <- audio@.Data[, "FL"]
right_channel <- audio@.Data[, "FR"]

# 执行左声道傅里叶变换
fft_left <- fft(left_channel)

# 执行右声道傅里叶变换
fft_right <- fft(right_channel)

# 打印左声道和右声道傅里叶变换结果
print(fft_left)
print(fft_right)

# 绘制左声道和右声道傅里叶变换结果的频谱图
plot_spectrum <- function(fft_result, channel) {
  freq <- abs(fft_result)
  plot(freq, type = "l", xlab = "Frequency", ylab = "Magnitude", main = paste("Spectrum -", channel))
}

plot_spectrum(fft_left, "Left Channel")
plot_spectrum(fft_right, "Right Channel")

# 执行左声道短时傅里叶变换（STFT）
stft_left <- spec(left_channel, f = audio@samp.rate, plot = FALSE)

# 执行右声道短时傅里叶变换（STFT）
stft_right <- spec(right_channel, f = audio@samp.rate, plot = FALSE)

# 绘制左声道和右声道STFT结果的频谱图
plot_stft_spectrum <- function(stft_result, channel) {
  plot(stft_result, xlab = "Time", ylab = "Frequency", main = paste("STFT Spectrum -", channel))
}

plot_stft_spectrum(stft_left, "Left Channel")
plot_stft_spectrum(stft_right, "Right Channel")
########################################################

# 绘制波形图
plot(audio1)

# 绘制频谱图
spectrum(audio1, plot = TRUE)
#
data <- as.data.frame(audio1@.Data[, "FL"])
colnames(data) <- "Amplitude"
data$Time <- seq(1, length(audio1@.Data[, "FL"])) / audio1@samp.rate

# 绘制波形图
ggplot(data, aes(x = Time, y = Amplitude)) +
  geom_line() +
  labs(x = "Time", y = "Amplitude", title = "Waveform")

# 计算频谱
spec <- spectrum(audio1, plot = FALSE)

# 将频谱数据转换为数据框
spec_data <- data.frame(Frequency = spec$freq, Magnitude = spec$spec)

# 绘制频谱图
ggplot(spec_data, aes(x = Frequency, y = Magnitude.1)) +
  geom_line() +
  labs(x = "Frequency", y = "Magnitude", title = "Frequency Spectrum")
ggplot(spec_data, aes(x = Frequency, y = Magnitude.2)) +
  geom_line() +
  labs(x = "Frequency", y = "Magnitude", title = "Frequency Spectrum")
###########################################
# 提取左声道和右声道音频数据
left_channel <- audio1@.Data[, "FL"]
right_channel <- audio1@.Data[, "FR"]

# 执行左声道傅里叶变换
fft_left <- fft(left_channel)

# 执行右声道傅里叶变换
fft_right <- fft(right_channel)

# 打印左声道和右声道傅里叶变换结果
print(fft_left)
print(fft_right)

# 绘制左声道和右声道傅里叶变换结果的频谱图
plot_spectrum <- function(fft_result, channel) {
  freq <- abs(fft_result)
  plot(freq, type = "l", xlab = "Frequency", ylab = "Magnitude", main = paste("Spectrum -", channel))
}

plot_spectrum(fft_left, "Left Channel")
plot_spectrum(fft_right, "Right Channel")

# 执行左声道短时傅里叶变换（STFT）
stft_left <- spec(left_channel, f = audio1@samp.rate, plot = FALSE)

# 执行右声道短时傅里叶变换（STFT）
stft_right <- spec(right_channel, f = audio1@samp.rate, plot = FALSE)

# 绘制左声道和右声道STFT结果的频谱图
plot_stft_spectrum <- function(stft_result, channel) {
  plot(stft_result, xlab = "Time", ylab = "Frequency", main = paste("STFT Spectrum -", channel))
}

plot_stft_spectrum(stft_left, "Left Channel")
plot_stft_spectrum(stft_right, "Right Channel")
