# Script Detect version of CommunityPower EA >= 2.18 to <= 2.48
# Drag and drop file settings MT5 to windows form and press button
#
# Autor: Ulises Cune (@Ulises2k)
# v1.2


function MainConvertVersion ([string]$filePath) {

	$version=""

	#Detect Version 2.18
	#Pending_Type=0||0||0||2||N
	#Pending_Distance=10||10||1.000000||100.000000||N
	#Pending_Bar=2||2||1||20||N
	#Pending_TrailMode=2||0||0||2||N
	#MinPause_Bars=0||0||1||10||N
	#BreakEven_AfterOrder=0||0||1||10||N
	if (Select-String -Path $filePath -Quiet -Pattern "Pending_TrailMode") {
        $version=$version + ">=2.18"
    }

	#Detect Version 2.19
	#MartingailOnSignal=false||false||0||true||N
	#GlobalMartingail_Properties========
	#ApplyAfterClosedLoss=false||false||0||true||N
	#BigCandle_OpenOn=0||0||0||3||N
	#Oscillators_OpenOn=2||0||0||3||N
	#Oscillator2_OpenOn=0||0||0||3||N
	#IdentifyTrend_OpenOn=2||0||0||3||N
	#TDI_OpenOn=2||0||0||3||N
	#MACD_OpenOn=0||0||0||3||N
	#MA_Filter_1_OpenOn=0||0||0||3||N
	#MA_Filter_2_OpenOn=0||0||0||3||N
	#MA_Filter_3_OpenOn=0||0||0||3||N
	#VolFilter_OpenOn=0||0||0||3||N
	#FIBO_OpenOn=0||0||0||3||N
	#GUI_Window_Alpha=255
    if (Select-String -Path $filePath -Quiet -Pattern "Oscillators_OpenOn") {
        $version=$version + ">=2.19"
    }

	#Detect Version 2.20
	#StopLoss_Mode=1||0||0||2||N
	#MinProfitToClose_Properties========
	#MinProfitToClose=0||0||0.000000||0.000000||N
	#MartingailOnTheBarEnd=false||false||0||true||N
	#MartingailLotMode=2||0||0||2||N
	#PartialClose_Properties========
	#PartialClose_After=0||0||1||10||N
	#PartialClose_MinProfit=0||0||0.000000||0.000000||N
	#AntiMartingailLotMode=2||0||0||2||N
	#AntiStopLoss_ReduceSize=0||0||0.000000||0.000000||N
	#AntiStopLoss_ReduceCoeff=1||1||0.100000||10.000000||N
	#AntiStopLoss_MinSize=5||5||0.500000||50.000000||N
	#AntiStopLoss_Mode=1||0||0||2||N
	#BigCandle_MartinOn=0||0||0||3||N
	#Oscillators_MartinOn=0||0||0||3||N
	#Oscillator2_MartinOn=0||0||0||3||N
	#IdentifyTrend_MartinOn=0||0||0||3||N
	#TDI_MartinOn=0||0||0||3||N
	#MACD_MartinOn=0||0||0||3||N
	#MA_Filter_1_MartinOn=0||0||0||3||N
	#MA_Filter_2_MartinOn=0||0||0||3||N
	#MA_Filter_3_MartinOn=0||0||0||3||N
	#VolFilter_MartinOn=0||0||0||3||N
	#FIBO_MartinOn=0||0||0||3||N
	if (Select-String -Path $filePath -Quiet -Pattern "StopLoss_Mode") {
        $version=$version + ">=2.20"
    }

	#Detect Version 2.21
	#CP_MT5_EURUSD_Grid8_v2.21.set
	#NewDealOnNewBar=false||false||0||true||N
	if (Select-String -Path $filePath -Quiet -Pattern "NewDealOnNewBar") {
        $version=$version + ">=2.21"
    }

	#Detect Version 2.22
	#I don't have the default set of this version, could you share it with me if you have it? @ulises2k

	#Detect Version 2.23
	#MaxFloatingLoss=0||0||0.000000||0.000000||N
	#GlobalStopLoss_ccy=0||0||0.000000||0.000000||N
	#PauseAfterLoss=0||0||1||10||N
	#TakeProfit_ReduceAfter========
	#TakeProfit_ReduceAfter_mins=0||0||1||10||N
	#TakeProfit_ReduceAfter_coeff=0.1||0.1||0.010000||1.000000||N
	#TakeProfit_ReduceSeries========
	#TakeProfit_ReduceSize=0||0||0.000000||0.000000||N
	#TakeProfit_ReduceCoeff=1||1||0.100000||10.000000||N
	#TakeProfit_MinSize=0||0||0.000000||0.000000||N
	#TakeProfit_Global========
	#PartialClose_MinProfit_Perc=0||0||0.000000||0.000000||N
	#GUI_VisualTest_RefreshSec=0
	if (Select-String -Path $filePath -Quiet -Pattern "MaxFloatingLoss") {
        $version=$version + ">=2.23"
    }

	#Detect Version 2.24
	#Community EURUSD 2 risk 5% coef 1.32 stop lost 225 bon_v2.24.set
	#FIB2_Properties====================================================================================
	#FIB2_Type=0||0||0||2||N
	#FIB2_TF=16385||0||0||49153||N
	#FIB2_Bars=120||120||1||1200||N
	#FIB2_Level=61.8||61.8||6.180000||618.000000||N
	#FIB2_UseClosedBars=true||false||0||true||N
	#FIB2_OpenOn=0||0||0||3||N
	#FIB2_MartinOn=0||0||0||3||N
	#FIB2_CloseOn=0||0||0||4||N
	if (Select-String -Path $filePath -Quiet -Pattern "FIB2_Type") {
        $version=$version + ">=2.24"
    }

	#Detect Version 2.25
	#BigCandle_CloseOn=0||0||0||4||N
	#BigCandle_PartialCloseOn=0||0||0||3||N
	#Oscillators_PartialCloseOn=0||0||0||3||N
	#Oscillator2_PartialCloseOn=0||0||0||3||N
	#IdentifyTrend_PartialCloseOn=0||0||0||3||N
	#TDI_PartialCloseOn=0||0||0||3||N
	#MACD_PartialCloseOn=0||0||0||3||N
	#MA_Filter_1_PartialCloseOn=0||0||0||3||N
	#MA_Filter_2_PartialCloseOn=0||0||0||3||N
	#MA_Filter_3_PartialCloseOn=0||0||0||3||N
	#VolFilter_PartialCloseOn=0||0||0||3||N
	#FIBO_CheckInterval=1||0||0||10||N
	#FIBO_PartialCloseOn=0||0||0||3||N
	#FIB2_CheckInterval=1||0||0||10||N
	#FIB2_PartialCloseOn=0||0||0||3||N
	#Time_ApplyTo=1||0||0||3||N
	#EveryDay_CloseHour=-1||-1||0||23||N
	#EveryDay_CloseMinute=0||0||0||55||N
	#Custom_Schedule_Properties===== Custom Schedule ====
	#Custom_Schedule_On=false||false||0||true||N
	#Monday_StartHour=-1||-1||0||23||N
	#Monday_StartMinute=0||0||0||55||N
	#Monday_EndHour=-1||-1||0||23||N
	#Monday_EndMinute=0||0||0||55||N
	#Tuesday_StartHour=-1||-1||0||23||N
	#Tuesday_StartMinute=0||0||0||55||N
	#Tuesday_EndHour=-1||-1||0||23||N
	#Tuesday_EndMinute=0||0||0||55||N
	#Wednesday_StartHour=-1||-1||0||23||N
	#Wednesday_StartMinute=0||0||0||55||N
	#Wednesday_EndHour=-1||-1||0||23||N
	#Wednesday_EndMinute=0||0||0||55||N
	#Thursday_StartHour=-1||-1||0||23||N
	#Thursday_StartMinute=0||0||0||55||N
	#Thursday_EndHour=-1||-1||0||23||N
	#Thursday_EndMinute=0||0||0||55||N
	#Friday_StartHour=-1||-1||0||23||N
	#Friday_StartMinute=0||0||0||55||N
	#Friday_EndHour=-1||-1||0||23||N
	#Friday_EndMinute=0||0||0||55||N
	if (Select-String -Path $filePath -Quiet -Pattern "BigCandle_CloseOn") {
        $version=$version + ">=2.25"
    }

	#Detect Version 2.26
	#AutoHedge_Properties========
	#AutoHedge_AfterOrder=0||0||1||10||N
	if (Select-String -Path $filePath -Quiet -Pattern "AutoHedge_AfterOrder") {
        $version=$version + ">=2.26"
    }

	#Detect Version 2.27
	#UseCustomCommission=0||0||0.000000||0.000000||N
	#UseVirtualSL=true||false||0||true||N
	#Sounds_Enabled=false
	#Sounds_OpenFirst=expert.wav
	#Sounds_OpenMartin=alert2.wav
	#Sounds_OpenAntiMartin=alert2.wav
	#Sounds_Close=alert.wav
    if (Select-String -Path $filePath -Quiet -Pattern "UseCustomCommission") {
        $version=$version + ">=2.27"
    }

	#Detect Version 2.28
	#UseVirtualTP=false||false||0||true||N
	#BreakEven_MinProfit=0||0||0.000000||0.000000||N
	#TDI_Mode=1||0||0||1||N
	#TDI_SignalLevel=50||50||5.000000||500.000000||N
	#TDI_PeriodRSI=21||21||1||210||N
	#TDI_AppliedPriceRSI=1||1||0||7||N
	#TDI_PeriodSmRSI=2||2||1||20||N
	#TDI_MethodSmRSI=0||0||0||3||N
	#TDI_PeriodSmSig=7||7||1||70||N
	#TDI_MethodSmSig=0||0||0||3||N
	#TDI_PeriodVolBand=34||34||1||340||N
	#TDI_StdDev=1.6185||1.6185||0.161850||16.185000||N
	#ShowOrders_Settings====================================================================================
	#Show_Opened=1||0||0||3||N
	#Show_Closed=true||false||0||true||N
	#Show_Pending=true||false||0||true||N
	#MaxHistoryDeals=500||500||1||5000||N
	#Color_Properties=
	#Color_B_Open=16748574
	#Color_B=16748574
	#Color_B_Loss=15130800
	#Color_S_Open=17919
	#Color_S=17919
	#Color_S_Loss=12695295
	#Profit_Properties=
	#Profit_ShowInMoney=true||false||0||true||N
	#Profit_ShowInPoints=true||false||0||true||N
	#Profit_ShowInPercents=false||false||0||true||N
	#ProfitDigitsToShow=1||1||1||10||N
	#Font=Arial
	#FontSize=9||9||1||90||N
	#Style_Properties=
	#Open_Close_Line_Width=1||1||1||10||N
	#Open_Close_Line_Style=2||0||0||4||N
	#Open_PriceLabel_Width=0||0||1||10||N
	#Close_PriceLabel_Width=0||0||1||10||N
	#SL_TP_Dashes_Show=true||false||0||true||N
	#SL_TP_Lines_Width=0||0||1||10||N
	#SL_TP_Lines_Style=2||0||0||4||N
	#Expiration_Width=0||0||1||10||N
	#Expiration_Style=2||0||0||4||N
	#Optimization_Settings====================================================================================
	#InpEquityRecorderType=1
	#InpEquityRecorderCorr=0
	if (Select-String -Path $filePath -Quiet -Pattern "UseVirtualTP") {
        $version=$version + ">=2.28"
    }

	#Detect Version 2.29
	#eurusd_5m_leverage100_roboforex_2_v2.29.3_Beta.set
	#; News settings
	#News_Properties================================================================
	#News_Mode=0||0||0||2||N
	#News_Currencies=auto
	#News_Impact_H=true||false||0||true||N
	#News_Impact_M=true||false||0||true||N
	#News_Impact_L=true||false||0||true||N
	#News_Impact_N=false||false||0||true||N
	#News_FilterInclude=
	#News_MinutesBefore=15||30||30||600||Y
	#News_MinutesAfter=15||30||30||600||Y
	#News_Draw_Properties===== Visualization ====
	#News_ShowOnChart=true
	#News_Style_History=0
	#News_Style_Future=3
	#News_Color_ImpactH=255
	#News_Color_ImpactM=65535
	#News_Color_ImpactL=32768
	#News_Color_ImpactN=12632256
	if (Select-String -Path $filePath -Quiet -Pattern "News_Mode") {
        $version=$version + ">=2.29"
    }

	#Detect Version 2.30
	#MinStepSize=0||0||0.000000||0.000000||N
	#AntiMinStepSize=0||0||0.000000||0.000000||N
	#; Oscillator #3 properties
	#Oscillator3_Properties====================================================================================
	#Oscillator3_Type=0||0||0||4||N
	#Oscillator3_Indicator=2||0||0||4||N
	#Oscillator3_TF=16408||0||0||49153||N
	#Oscillator3_Period=14||14||1||140||N
	#Oscillator3_Price=1||1||0||7||N
	#Oscillator3_MA_Period=3||3||1||30||N
	#Oscillator3_MA_Method=0||0||0||3||N
	#Oscillator3_Slowing=3||3||1||30||N
	#Oscillator3_STO_Price=0||0||0||1||N
	#Oscillator3_Level_UP_Min=80||80||8.000000||800.000000||N
	#Oscillator3_Level_DN_Min=-999||-999||-99.900000||-9990.000000||N
	#Oscillator3_ContrTrend=false||false||0||true||N
	#Oscillator3_OpenOn=0||0||0||3||N
	#Oscillator3_MartinOn=0||0||0||3||N
	#Oscillator3_CloseOn=0||0||0||4||N
	#Oscillator3_PartialCloseOn=0||0||0||3||N
	#; Parabolic SAR properties
	#PSar_Properties====================================================================================
	#PSar_Type=0||0||0||2||N
	#PSar_TF=0||0||0||49153||N
	#PSar_Step=0.02||0.02||0.002000||0.200000||N
	#PSar_Maximum=0.2||0.2||0.020000||2.000000||N
	#PSar_Reverse=false||false||0||true||N
	#PSar_OpenOn=0||0||0||3||N
	#PSar_MartinOn=0||0||0||3||N
	#PSar_CloseOn=0||0||0||4||N
	#PSar_PartialCloseOn=0||0||0||3||N
	#; ZZ properties
	#ZZ_Properties====================================================================================
	#ZZ_Type=0||0||0||4||N
	#ZZ_TF=0||0||0||49153||N
	#ZZ_Period=12||12||1||120||N
	#ZZ_MinAmplitude=10||10||1||100||N
	#ZZ_MinMotion=0||0||1||10||N
	#ZZ_DistanceType=0||0||0||2||N
	#ZZ_SignalDistCoeff=0||0||0.000000||0.000000||N
	#ZZ_Reverse=false||false||0||true||N
	#ZZ_UseClosedBars=false||false||0||true||N
	#ZZ_OpenOn=0||0||0||3||N
	#ZZ_MartinOn=0||0||0||3||N
	#ZZ_CloseOn=0||0||0||4||N
	#ZZ_PartialCloseOn=0||0||0||3||N
	#; Volatility for MA and ZZ Filters distance
	#Profit_Aggregate=true||false||0||true||N
	if (Select-String -Path $filePath -Quiet -Pattern "MinStepSize") {
        $version=$version + ">=2.30"
    }

	#Detect Version 2.31
	#MinMarginLevel=0
	#; Volatility for all parameters nominated in points
	#VolPV_Properties====================================================================================
	#VolPV_Type=0||0||0||5||N
	#VolPV_TF=16408||0||0||49153||N
	#VolPV_Period=20||20||1||200||N
	#VolPV_MinSize=0||0||0.000000||0.000000||N
	#VolPV_MaxSize=0||0||0.000000||0.000000||N
	#Pending_Distance_ModeP=0||0||0||1||N
	#StopLoss_ModeP=0||0||0||1||N
	#TakeProfit_ModeP=0||0||0||1||N
	#MinProfitToClose_ModeP=0||0||0||1||N
	#; Global Account TakeProfit properties
	#GlobalAccountTakeProfit_Prop====================================================================================
	#GlobalAccountTakeProfit_ccy=0||0||0.000000||0.000000||N
	#GlobalAccountTakeProfit_perc=0||0||0.000000||0.000000||N
	#TrailingStop_ModeP=0||0||0||1||N
	#Martingail_ModeP=0||0||0||1||N
	#AntiMartingail_ModeP=0||0||0||1||N
	#AntiStopLoss_ModeP=0||0||0||1||N
	#News_OpenOn=0||0||0||3||N
	#News_MartinOn=0||0||0||3||N
	#News_CloseOn=0||0||0||4||N
	#News_PartialCloseOn=0||0||0||3||N
	#Notifications_Settings====================================================================================
	#MessagesToGrammy=true||false||0||true||N
	#Alerts_Enabled=false
	if (Select-String -Path $filePath -Quiet -Pattern "MinMarginLevel") {
		$version=$version + ">=2.31"
	}

	#Detect Version 2.32.4
	#Lot_MaxPer1000=0||0||0.000000||0.000000||N
	#; Hedge properties
	#Hedge_Properties====================================================================================
	#AllowHedge=true||false||0||true||N
	#IncreaseHedge_After=0||0||1||10||N
	#IncreaseHedge_Coefficient=2.5||2.5||0.250000||25.000000||N
	#IncreaseHedge_Mode=0||0||0||2||N
	#AutoHedge_AfterOrder=0||0||1||10||N
	#; Global Account properties
	#GlobalAccount_Properties====================================================================================
	#GlobalAccountTakeProfit_ccy=0||0||0.000000||0.000000||N
	#GlobalAccountTakeProfit_perc=0||0||0.000000||0.000000||N
	#GlobalAccountTargetProfit_ccy=0||0||0.000000||0.000000||N
	#GlobalAccountTargetProfit_perc=0||0||0.000000||0.000000||N
	#AllowBoth_Properties========
	#AllowBothMartinAndAntiMartin=false||false||0||true||N
	#; Partial close properties
	#PartialClose_Properties====================================================================================
	#PartialClose_After=0||0||1||10||N
	#PartialClose_MinProfit=0||0||0.000000||0.000000||N
	#PartialClose_MinProfit_Perc=0||0||0.000000||0.000000||N
	#PartialClose_MinPercent=100||100||10.000000||1000.000000||N
	#PartialCloseHedge_After=0||0||1||10||N
	#PartialCloseHedge_MinProfit=0||0||0.000000||0.000000||N
	#PartialCloseHedge_MinProfit_Perc=0||0||0.000000||0.000000||N
	#PartialCloseHedge_MinPercent=100||100||10.000000||1000.000000||N
	if (Select-String -Path $filePath -Quiet -Pattern "Lot_MaxPer1000") {
		$version=$version + ">=2.32.4"
	}

	#Detect Version 2.33
	#I don't have the default set of this version, could you share it with me if you have it? @ulises2k

	#Detect Version 2.34
	#AutoHedge_MaxOrders=0||1||1||10||N
	#GlobalAccountTrailingStop_ccy=0||0||0.000000||0.000000||N
	#GlobalAccountTrailingStop_perc=0||0||0.000000||0.000000||N
	#CutomCoefficients=2.2,3.4,4.7
	#AntiCutomCoefficients=0.95,0.77,0.53
	#PartialCloseHedge_MinProfit=10||0||0.000000||0.000000||N
	#PartialCloseHedge_MinProfit_Perc=0.5||0||0.000000||0.000000||N
	#PartialCloseHedge_MinProfit_OppL=95||0||0.000000||0.000000||N
	if (Select-String -Path $filePath -Quiet -Pattern "AutoHedge_MaxOrders") {
		$version=$version + ">=2.34"
	}

	#Detect Version 2.35
	#Set file: EURUSD_100Cent_Oscillators1_IdentifyTrend_DTrend_FIBO1_v2.35.set
	#GlobalTakeProfit_ccy=0||0||0.000000||0.000000||N
	#GlobalTakeProfit_OnlyLock=true||false||0||true||N
	#Oscillators_UseClosedBars=true||false||0||true||N
	#Oscillator2_UseClosedBars=true||false||0||true||N
	#Oscillator3_UseClosedBars=true||false||0||true||N
	#Oscillator3_OpenOn=0||0||0||3||N
	#MACD_FastMA_Method=1||0||0||9||N
	#MACD_SlowMA_Method=1||0||0||9||N
	#MACD_SignalMA_Method=0||0||0||3||N
	#MACD_JMA_Phase=0||0||1||10||N
	#MACD_Reverse=false||false||0||true||N
	#; MACD #2 properties
	#MACD2_Properties====== MACD #2 =====
	#MACD2_Type=0||0||0||8||N
	#MACD2_TF=0||0||0||49153||N
	#MACD2_PeriodFast=12||12||1||120||N
	#MACD2_FastMA_Method=1||0||0||9||N
	#MACD2_PeriodSlow=27||27||1||270||N
	#MACD2_SlowMA_Method=1||0||0||9||N
	#MACD2_PeriodSignal=9||9||1||90||N
	#MACD2_SignalMA_Method=0||0||0||3||N
	#MACD2_Price=1||1||0||7||N
	#MACD2_JMA_Phase=0||0||1||10||N
	#MACD2_Reverse=false||false||0||true||N
	#MACD2_UseClosedBars=true||false||0||true||N
	#MACD2_OpenOn=0||0||0||3||N
	#MACD2_MartinOn=0||0||0||3||N
	#MACD2_CloseOn=0||0||0||4||N
	#MACD2_PartialCloseOn=0||0||0||3||N
	#; DTrend properties
	#DTrend_Properties====== DTrend =====
	#DTrend_Type=0||0||0||3||N
	#DTrend_TF=0||0||0||49153||N
	#DTrend_PeriodMA1=9||5||1||50||N
	#DTrend_PeriodMA2=12||9||1||90||N
	#DTrend_PeriodD=5||5||1||50||N
	#DTrend_Scalar=1000000||1000000||100000.000000||10000000.000000||N
	#DTrend_Level=30||30||3.000000||300.000000||N
	#DTrend_Reverse=false||false||0||true||N
	#DTrend_UseClosedBars=true||false||0||true||N
	#DTrend_OpenOn=0||0||0||3||N
	#DTrend_MartinOn=0||0||0||3||N
	#DTrend_CloseOn=0||0||0||4||N
	#DTrend_PartialCloseOn=0||0||0||3||N
	if (Select-String -Path $filePath -Quiet -Pattern "GlobalTakeProfit_ccy") {
		$version=$version + ">=2.35"
	}

	#Detect Version 2.36
	#AutoHedge_OnDrawDown=0||0||0.000000||0.000000||N
	#CustomStepCoefficients=
	#PartialCloseHedge_MainToMain=false||false||0||true||N
	#BigCandle_HedgeOn=0||0||0||3||N
	#Oscillators_HedgeOn=0||0||0||3||N
	#Oscillator2_HedgeOn=0||0||0||3||N
	#Oscillator3_HedgeOn=0||0||0||3||N
	#IdentifyTrend_HedgeOn=0||0||0||3||N
	#TDI_HedgeOn=0||0||0||3||N
	#MACD_HedgeOn=0||0||0||3||N
	#MACD2_HedgeOn=0||0||0||3||N
	#DTrend_HedgeOn=0||0||0||3||N
	#PSar_HedgeOn=0||0||0||3||N
	#MA_Filter_1_HedgeOn=0||0||0||3||N
	#MA_Filter_2_HedgeOn=0||0||0||3||N
	#MA_Filter_3_HedgeOn=0||0||0||3||N
	#ZZ_HedgeOn=0||0||0||3||N
	#VolFilter_HedgeOn=0||0||0||3||N
	#FIBO_HedgeOn=0||0||0||3||N
	#FIB2_HedgeOn=0||0||0||3||N
	#News_HedgeOn=0||0||0||3||N
	if (Select-String -Path $filePath -Quiet -Pattern "AutoHedge_OnDrawDown") {
        $version=$version + ">=2.36"
    }

	#Detect Version 2.37.2
	#Pending_DisableForOpposite=false||false||0||true||N
	#AntiMartingail_AllowTP=false||false||0||true||N
	#TesterWithdrawal_Header===== Tester withdrawal ====
	#TesterWithdrawal_Type=0||0||0||2||N
	#TesterWithdrawal_Frequency=2||0||0||4||N
	#TesterWithdrawal_Size=50||50||5.000000||500.000000||N
	#InpEquityRecorder===== Optimization criterion ====
    if (Select-String -Path $filePath -Quiet -Pattern "Pending_DisableForOpposite") {
        $version=$version + ">=2.37.2"
    }

	#Detect Version 2.38
	#MaxStepSize=0||0||0.000000||0.000000||N
	#AntiMaxStepSize=0||0||0.000000||0.000000||N
	if (Select-String -Path $filePath -Quiet -Pattern "MaxStepSize") {
        $version=$version + ">=2.38"
    }

	#Detect Version 2.39
	#MaxFloatingLoss1=0||0||0.000000||0.000000||N
	#MinMarginLevel1=0||0||0.000000||0.000000||N
	if (Select-String -Path $filePath -Quiet -Pattern "MaxFloatingLoss1") {
        $version=$version + ">=2.39"
    }

	#Detect Version 2.40, 2.41
	#BinanceTradeConnector_Settings====================================================================================
	#CustomStartBalance=0||0||0.000000||0.000000||N
	#ShowVirtualInfoOnChart=false||false||0||true||N
	#SaveVirtualStateOnEveryChange=true||false||0||true||N
	#GUI_Color_Text=0
    if (Select-String -Path $filePath -Quiet -Pattern "CustomStartBalance") {
        $version=$version + ">=(2.40,2.41)"
    }

	#Detect Version 2.42
	#Set File: EURUSD_100Cent_StochasticK1_IdentifyTrend_TDI_VolFilterWATR_FIBO1_FIBO2_v2.42.set
	#Pending_DeleteIfOpposite=true||false||0||true||N
	if (Select-String -Path $filePath -Quiet -Pattern "Pending_DeleteIfOpposite") {
        $version=$version + ">=2.42"
    }

	#Detect Version 2.43.3
	#PartialClose_AnyToAny=false||false||0||true||N
	#DirChange_Properties====================================================================================
	#DirChange_Type=0||0||0||1||N
	#DirChange_OpenOn=0||0||0||3||N
	#ZZ_UsePrevExtremums=false||false||0||true||N
	#ZZ_Visualization=---Visualization---
	#ZZ_VisualizeLevels=true||false||0||true||N
	#ZZ_FillRectangle=false||false||0||true||N
	#ZZ_ColorUP=11186720
	#ZZ_ColorDN=17919
    if (Select-String -Path $filePath -Quiet -Pattern "PartialClose_AnyToAny") {
        $version=$version + ">=2.43.3"
    }

	#Detect Version 2.44
	#BigCandle_MaxSize=0||0||0.000000||0.000000||N
	if (Select-String -Path $filePath -Quiet -Pattern "BigCandle_MaxSize") {
        $version=$version + ">=2.44"
    }

	#Detect Version 2.45
	#GlobalAccountStopTillTomorrow=false||false||0||true||N
	#TrailingIncreaseEvery=0||0||0.000000||0.000000||N
	#TrailingIncreaseSize=0||0||0.000000||0.000000||N
	#TrailingMinMaxSize=0||0||0.000000||0.000000||N
	#; ADX properties
	#ADX_Properties====================================================================================
	#ADX_Type=0||0||0||2||N
	#ADX_TF=0||0||0||49153||N
	#ADX_Period=14||14||1||140||N
	#ADX_Level=10||10||1.000000||100.000000||N
	#ADX_Reverse=false||false||0||true||N
	#ADX_UseClosedBars=true||false||0||true||N
	#ADX_OpenOn=0||0||0||3||N
	#ADX_MartinOn=0||0||0||3||N
	#ADX_HedgeOn=0||0||0||3||N
	#ADX_CloseOn=0||0||0||4||N
	#ADX_PartialCloseOn=0||0||0||3||N
    if (Select-String -Path $filePath -Quiet -Pattern "GlobalAccountStopTillTomorrow") {
        $version=$version + ">=2.45"
    }

	#Detect Version 2.46
	#TrailingDecreaseEveryMinutes=0||0||1||10||N
	#TrailingDecreaseCoeff=0.9||0.9||0.090000||9.000000||N
	#TrailingDecreaseStartAfter=0||0||1||10||N
	#TrailingMinSize=0||0||0.000000||0.000000||N
	#TrailingMaxSize=0||0||0.000000||0.000000||N
	#ChangeStep_AfterOrder=0||0||1||10||N
	#ChangeStep_Coeff=2||2||0.200000||20.000000||N
	#PartialClose_CloseProfitItself=false||false||0||true||N
    if (Select-String -Path $filePath -Quiet -Pattern "TrailingDecreaseCoeff") {
        $version=$version + ">=2.46"
    }

	#Detect Version 2.47
	#SendAlertsToGrammy=true||false||0||true||N
	#UseOnlyOpenedTrades=true||false||0||true||N
	if (Select-String -Path $filePath -Quiet -Pattern "UseOnlyOpenedTrades") {
        $version=$version + ">=2.47"
    }

	#Detect Version 2.48
	#GlobalAccountStopLoss_ccy=0||0||0.000000||0.000000||N
	#GlobalAccountStopLoss_perc=0||0||0.000000||0.000000||N
	#DL_Properties====================================================================================
	#DL_MaxTrades_CurSymbol=0||0||1||10||N
	#DL_MaxTrades_AllSymbols=0||0||1||10||N
	#DL_MaxDrawDown=0||0||0.000000||0.000000||N
	#DL_MaxDrawDown_ccy=0||0||0.000000||0.000000||N
	#DL_MaxProfit=0||0||0.000000||0.000000||N
	#DL_MaxProfit_ccy=0||0||0.000000||0.000000||N
	#WL_Properties====================================================================================
	#WL_MaxDrawDown=0||0||0.000000||0.000000||N
	#WL_MaxDrawDown_ccy=0||0||0.000000||0.000000||N
	#WL_MaxProfit=0||0||0.000000||0.000000||N
	#WL_MaxProfit_ccy=0||0||0.000000||0.000000||N
	#ML_Properties====================================================================================
	#ML_MaxDrawDown=0||0||0.000000||0.000000||N
	#ML_MaxDrawDown_ccy=0||0||0.000000||0.000000||N
	#ML_MaxProfit=0||0||0.000000||0.000000||N
	#ML_MaxProfit_ccy=0||0||0.000000||0.000000||N
	#CL_Properties====================================================================================
	#CL_WeekStart_Day=1||0||0||6||N
	#CL_DayStartHour=0||-1||0||23||N
	#CL_CloseOnProfitAndDD=true||false||0||true||N
    if (Select-String -Path $filePath -Quiet -Pattern "GlobalAccountStopLoss_ccy") {
		$version=$version + ">=2.48"
	}

	return [string]$version
}

#######################GUI################################################################
### API Windows Forms ###
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

### Create form ###
$form = New-Object System.Windows.Forms.Form
$form.Text = "Detect Version CommunityPower EA"
$form.Size = '800,320'
$form.StartPosition = "CenterScreen"
$form.MinimumSize = $form.Size
$form.MaximizeBox = $False
$form.Topmost = $True

### Define controls ###
$button = New-Object System.Windows.Forms.Button
$button.Location = '5,5'
$button.Size = '75,23'
$button.Width = 120
$button.Text = "Detect Version MT5"

### Define controls ###
$button2 = New-Object System.Windows.Forms.Button
$button2.Location = '5,30'
$button2.Size = '75,23'
$button2.Width = 120
$button2.Text = "Clear ListBox"

$label = New-Object Windows.Forms.Label
$label.Location = '5,100'
$label.AutoSize = $True
$label.Text = "Drag and Drop MT5 files settings here:"

$label2 = New-Object Windows.Forms.Label
$label2.Location = '5,70'
$label2.AutoSize = $True
$label2.Text = "Version:"

$listBox = New-Object Windows.Forms.ListBox
$listBox.Location = '5,120'
$listBox.Height = 140
$listBox.Width = 700
$listBox.Anchor = ([System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right -bor [System.Windows.Forms.AnchorStyles]::Top)
$listBox.IntegralHeight = $False
$listBox.AllowDrop = $True

$statusBar = New-Object System.Windows.Forms.StatusBar
$statusBar.Text = "Ready"

### Add controls to form ###
$form.SuspendLayout()
$form.Controls.Add($button)
$form.Controls.Add($button2)
$form.Controls.Add($label)
$form.Controls.Add($label2)
$form.Controls.Add($listBox)
$form.Controls.Add($statusBar)
$form.ResumeLayout()

### Write event handlers ###
$button_Click = {
    foreach ($item in $listBox.Items) {
        if (!($i -is [System.IO.DirectoryInfo])) {
			$version = MainConvertVersion -file $item
            if ($version.length -gt 2) {
                $label2.Text = 'Version ' + $version
				[System.Windows.Forms.MessageBox]::Show('Version ' + $version, 'Detect Version MT5', 0, 64)
            }
            else {
				$label2.Text = 'No detect'
                [System.Windows.Forms.MessageBox]::Show('No detect', 'Detect Version MT5', 0, 64)
            }
        }
    }

    $statusBar.Text = ("List contains $($listBox.Items.Count) items")
}

$button2_Click = {
	$listBox.Items.Clear()
}

$listBox_DragOver = [System.Windows.Forms.DragEventHandler] {
    if ($_.Data.GetDataPresent([Windows.Forms.DataFormats]::FileDrop)) {
        # $_ = [System.Windows.Forms.DragEventArgs]
        $_.Effect = 'Copy'
    }
    else {
        $_.Effect = 'None'
    }
}

$listBox_DragDrop = [System.Windows.Forms.DragEventHandler] {
    foreach ($filename in $_.Data.GetData([Windows.Forms.DataFormats]::FileDrop)) {
        # $_ = [System.Windows.Forms.DragEventArgs]
        $listBox.Items.Add($filename)
    }
    $statusBar.Text = ("List contains $($listBox.Items.Count) items")
}

$form_FormClosed = {
    try {
        $listBox.remove_Click($button_Click)
        $listBox.remove_DragOver($listBox_DragOver)
        $listBox.remove_DragDrop($listBox_DragDrop)
        $listBox.remove_DragDrop($listBox_DragDrop)
        $form.remove_FormClosed($Form_Cleanup_FormClosed)
    }
    catch [Exception]
    { }
}


### Wire up events ###
$button.Add_Click($button_Click)
$button2.Add_Click($button2_Click)
$listBox.Add_DragOver($listBox_DragOver)
$listBox.Add_DragDrop($listBox_DragDrop)
$form.Add_FormClosed($form_FormClosed)


#### Show form ###
[void] $form.ShowDialog()
