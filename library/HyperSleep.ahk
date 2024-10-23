/************************************************************************
 * @description Precise sleep and QPC function (queryperformance)
 * @file HyperSleep.ahk
 * @author ninju | .ninju.
 * @date 2024/06/20
 * @version 0.0.1
 ***********************************************************************/

/**
 * HyperSleep(ms)
 * @param ms
 * @returns slept duration in ms
 */
HyperSleep(ms) {
	s := QPC()
	while (e:= QPC() - s) < ms {
		switch {
			case ms - e > 25: DllCall("Sleep", "uint", ms - e - 22)
			case ms - e > 8: DllCall("winmm.dll\timeBeginPeriod", "uint", 5), DllCall("Sleep", "uint", 1), DllCall("winmm.dll\timeEndPeriod", "uint", 5)
			case ms - e > 3: DllCall("winmm.dll\timeBeginPeriod", "uint", 1), DllCall("Sleep", "uint", 1), DllCall("winmm.dll\timeEndPeriod", "uint", 1)
		}
	}
	return QPC() - s
}
