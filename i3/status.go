package main

import (
	"fmt"
	"os"
	"os/exec"
	"os/signal"
	"strconv"
	"strings"
	"syscall"
	"time"
)

var notified bool
var limit int

func init() {
	notified = false
	limit, _ = strconv.Atoi(os.Args[1])
}

func bash(args ...string) string {
	args = append([]string{"-c"}, args...)
	output, _ := exec.Command("bash", args...).Output()
	return string(output)
}

func presentTime() string {
	return "⌛: " + time.Now().Format("Mon Jan 02-01-2006 15:04:05")
}

func brightness() string {
	output := bash("brightnessctl")
	lines := strings.Split(output, "\n")
	percent := ""
	for _, line := range lines {
		if strings.Contains(line, "Current brightness") {
			temp := strings.Split(line, " ")
			percent = temp[3][1 : len(temp[3])-1]
		}
	}
	return "💡: " + percent
}

func capsDetector() string {
	output := bash("xset -q")
	caps := ""
	lines := strings.Split(output, "\n")
	for _, line := range lines {
		if strings.Contains(line, "Caps Lock:") {
			caps = strings.Fields(line)[3]
			break
		}
	}
	if strings.ToUpper(caps) == "OFF" {
		return "🄰"
	} else {
		return "⬆️"
	}
}

func batteryStatus() (string, int) {
	output := bash("acpi -i")
	lines := strings.Split(output, "\n")
	battery := ""
	for _, line := range lines {
		if strings.Contains(line, "design capacity") {
			elements := strings.Split(line, ":")
			battery = elements[0]
		}
	}
	output = bash("acpi")
	lines = strings.Split(output, "\n")
	percent := ""
	for _, line := range lines {
		if strings.Contains(line, battery) {
			elements := strings.Split(line, " ")
			percent = strings.Split(elements[3], ",")[0]
			percentInt, _ := strconv.Atoi(percent[:len(percent)-1])
			if strings.Contains(line, "Discharging") {
				return fmt.Sprintf("🔋: %s", percent), percentInt
			} else if strings.Contains(line, "Charging") {
				return fmt.Sprintf("⚡: %s", percent), percentInt
			} else if strings.Contains(line, "Full") {
				return fmt.Sprintf("🔋: %s", percent), percentInt
			}
			return fmt.Sprintf("🔋: %s", percent), percentInt
		}
	}
	return "", 0
}

func volumeStatus() string {
	output := bash("amixer -D pulse sget Master")
	lines := strings.Split(output, "\n")
	volume := ""
	for _, line := range lines {
		if strings.Contains(line, "Front Left:") {
			args := strings.Fields(line)
			volume = args[4][1 : len(args[4])-1]
			break
		}
	}
	return fmt.Sprintf("🎧: %s", volume)
}

func batteryNotifier(battery int) {
	if battery < limit {
		if !notified {
			bash("i3-msg 'exec i3-nagbar -t warning -m \"Battery Low.\"'; notify-send 'Battery Low.'")
			notified = true
		}
	} else {
		notified = false
	}
}

func diskStorage() string {
	output := bash("df -h -T /")
	temp := strings.Split(output, "\n")
	temp1 := strings.Split(temp[1], " ")
	return "💾: " + temp1[16]
}

func main() {
	run := true
	seperator := " | "
	go (func() {
		interrupt := make(chan os.Signal)
		signal.Notify(interrupt, os.Interrupt, syscall.SIGTERM, syscall.SIGINT)
		<-interrupt
		run = false
	})()
	for run {
		battery, percentInt := batteryStatus()
		batteryNotifier(percentInt)
		fmt.Println(strings.Join([]string{capsDetector(),presentTime(), volumeStatus(), battery, brightness(), diskStorage()}, seperator) + seperator[:len(seperator) - 1])
		time.Sleep(time.Second)
	}
}
