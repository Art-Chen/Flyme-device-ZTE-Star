.class public final Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;
.super Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mDeviceSelected:Z

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 56
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 58
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 59
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 60
    return-void
.end method

.method initDevicePreference(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 64
    const v0, 0x7f04009a

    invoke-virtual {p1, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 65
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 151
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 88
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0903af

    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 91
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 93
    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 94
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    const v0, 0x7f0904d7

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10803fe

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 73
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 113
    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    if-nez v1, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 138
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 140
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 142
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 145
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .param p1, "btPreference"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 125
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 130
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 83
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 100
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 101
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 103
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 105
    :cond_0
    return-void
.end method
