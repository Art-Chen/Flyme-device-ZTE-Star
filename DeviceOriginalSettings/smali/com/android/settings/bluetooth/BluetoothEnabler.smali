.class public final Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;
.super Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;
.source "BluetoothEnabler.java"


# static fields
.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 49
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;)V

    .line 49
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 86
    .local v0, "manager":Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 93
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

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

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 151
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 153
    :goto_0
    return-void

    .line 131
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 136
    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 138
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 146
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 186
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f090545

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 180
    :cond_2
    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->pause()V

    .line 121
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 115
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;->show()V

    .line 98
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;->hide()V

    .line 102
    return-void
.end method
