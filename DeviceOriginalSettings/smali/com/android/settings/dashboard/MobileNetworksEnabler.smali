.class public Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;
.super Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;
.source "MobileNetworksEnabler.java"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 47
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler$1;-><init>(Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->init()V

    .line 68
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->setupSwitches()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;)V

    .line 47
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler$1;-><init>(Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->init()V

    .line 61
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->setupSwitches()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->updateState()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    return-void
.end method

.method private setupSwitches()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->updateState()V

    .line 80
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;->show()V

    .line 83
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->setChecked(Z)V

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 120
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    const-string v1, "cell"

    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f090545

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->setChecked(Z)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->pause()V

    .line 99
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/MobileNetworksEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method
