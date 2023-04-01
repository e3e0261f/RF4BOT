; 设置图像搜索坐标和预期等待时间
ImageSearchCoords := "1228， 956， 1247， 968"
WaitTimeMS := 500

; 搜索指定图像并返回搜索结果
ImageSearch, FoundX, FoundY, %ImageSearchCoords%, mate/done.png, %Tolerance%, 

; 如果找到图片，则等待一段时间进行验证
if (ErrorLevel = 0) {
    ; 显示“匹配成功”消息
    ToolTip, 匹配成功, FoundX+30, FoundY, 1
    StartTime:= A_TickCount

    ; 持续监测是否在预期时间内
    While 1 {
        ; 如果时间到达或已经找到错误等级变更，退出验证循环
        if ((A_TickCount - StartTime) > WaitTimeMS || ErrorLevel = 1)
            break

        ; 显示“验证中”消息
        ToolTip, 验证中..., FoundX+30, FoundY, 1
        ; 暂停20ms稍后再继续检查
        Sleep, 20
    }

    ; 如果在预期时间内没有找到错误，执行声音提示，并显示“提示已播放”消息
    if (ErrorLevel = 0) {
        SoundBeep, 400, 1000
        ToolTip, 提示已播放, FoundX+30, FoundY, 1
    }
} else {
    ; 如果未找到图片，显示“未匹配到”消息
    ToolTip, 未匹配到, 500, 500, 1
}

; 暂停5秒钟后消失消息
Sleep, 5000
ToolTip
