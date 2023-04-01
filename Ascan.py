import pyautogui

while True:
    # 获取屏幕分辨率
    screenWidth, screenHeight = pyautogui.size()

    # 搜索A字母的位置
    aButtonLocation = pyautogui.locateOnScreen('a_button.png')

    # 如果找到了A字母
    if aButtonLocation is not None:
        # 获取A字母中心位置
        aButtonCenter = pyautogui.center(aButtonLocation)
        # 移动鼠标到A字母中心
        pyautogui.moveTo(aButtonCenter)
