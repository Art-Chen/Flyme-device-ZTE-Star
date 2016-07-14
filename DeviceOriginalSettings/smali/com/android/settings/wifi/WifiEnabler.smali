.class public Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;
.super Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;
.source "WifiEnabler.java"


# static fields
.field private static final EVENT_DATA_IS_WIFI_ON:Ljava/lang/String; = "is_wifi_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$1;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$2;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->init()V

    .line 96
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setupSwitches()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$1;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler$2;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->init()V

    .line 89
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setupSwitches()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 179
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setChecked(Z)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 151
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 153
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setChecked(Z)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 138
    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setChecked(Z)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 146
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private setupSwitches()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 110
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 111
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;->show()V

    .line 114
    :cond_0
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 159
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 212
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/flyme/DeviceOriginalSettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090545

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setChecked(Z)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 196
    .local v0, "wifiApState":I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090544

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->pause()V

    .line 127
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method
