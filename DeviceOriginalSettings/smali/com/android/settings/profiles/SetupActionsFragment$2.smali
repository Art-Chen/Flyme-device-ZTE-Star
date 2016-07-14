.class Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;
.super Landroid/os/AsyncTask;
.source "SetupActionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/Profile;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, [Landroid/app/Profile;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->doInBackground([Landroid/app/Profile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/app/Profile;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Landroid/app/Profile;

    .prologue
    .line 351
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 352
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/ConnectionSettings;

    const/4 v11, 0x7

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    const/4 v12, 0x1

    invoke-direct {v10, v11, v8, v12}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 359
    :cond_0
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    const-string v9, "location"

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$100(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 361
    .local v4, "locationManager":Landroid/location/LocationManager;
    const-string v8, "gps"

    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 363
    .local v3, "gpsEnabled":Z
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/ConnectionSettings;

    const/4 v11, 0x4

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    :goto_1
    const/4 v12, 0x1

    invoke-direct {v10, v11, v8, v12}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 368
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    const-string v9, "wifi"

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$200(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 369
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/ConnectionSettings;

    const/4 v11, 0x1

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    const/4 v12, 0x1

    invoke-direct {v10, v11, v8, v12}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 374
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/ConnectionSettings;

    const/4 v11, 0x5

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    const/4 v12, 0x1

    invoke-direct {v10, v11, v8, v12}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 379
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    invoke-virtual {v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 380
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    const-string v9, "connectivity"

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$300(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 382
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/ConnectionSettings;

    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    const/4 v12, 0x1

    invoke-direct {v10, v11, v8, v12}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 388
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/ConnectionSettings;

    const/4 v11, 0x2

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_5
    const/4 v12, 0x1

    invoke-direct {v10, v11, v8, v12}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 396
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    invoke-virtual {v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 397
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    const-string v9, "nfc"

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$400(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NfcManager;

    .line 398
    .local v5, "nfcManager":Landroid/nfc/NfcManager;
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/ConnectionSettings;

    const/16 v11, 0x8

    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_6
    const/4 v12, 0x1

    invoke-direct {v10, v11, v8, v12}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 404
    .end local v5    # "nfcManager":Landroid/nfc/NfcManager;
    :cond_2
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    invoke-virtual {v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 406
    .local v1, "am":Landroid/media/AudioManager;
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v8, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v9, Landroid/app/StreamSettings;

    const/4 v10, 0x4

    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Landroid/app/StreamSettings;-><init>(IIZ)V

    invoke-virtual {v8, v9}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 410
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v8, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v9, Landroid/app/StreamSettings;

    const/4 v10, 0x3

    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Landroid/app/StreamSettings;-><init>(IIZ)V

    invoke-virtual {v8, v9}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 414
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v8, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v9, Landroid/app/StreamSettings;

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Landroid/app/StreamSettings;-><init>(IIZ)V

    invoke-virtual {v8, v9}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 418
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v8, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v9, Landroid/app/StreamSettings;

    const/4 v10, 0x5

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Landroid/app/StreamSettings;-><init>(IIZ)V

    invoke-virtual {v8, v9}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 423
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 426
    const-string v6, "normal"

    .line 435
    .local v6, "ringValue":Ljava/lang/String;
    :goto_7
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v8, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v9, Landroid/app/RingModeSettings;

    const/4 v10, 0x1

    invoke-direct {v9, v6, v10}, Landroid/app/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Landroid/app/Profile;->setRingMode(Landroid/app/RingModeSettings;)V

    .line 438
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    invoke-virtual {v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v0, 0x1

    .line 440
    .local v0, "airplaneMode":Z
    :goto_8
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v9, v8, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v10, Landroid/app/AirplaneModeSettings;

    if-eqz v0, :cond_b

    const/4 v8, 0x1

    :goto_9
    const/4 v11, 0x1

    invoke-direct {v10, v8, v11}, Landroid/app/AirplaneModeSettings;-><init>(IZ)V

    invoke-virtual {v9, v10}, Landroid/app/Profile;->setAirplaneMode(Landroid/app/AirplaneModeSettings;)V

    .line 446
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$500(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    .line 447
    const/4 v8, 0x0

    return-object v8

    .line 352
    .end local v0    # "airplaneMode":Z
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "gpsEnabled":Z
    .end local v4    # "locationManager":Landroid/location/LocationManager;
    .end local v6    # "ringValue":Ljava/lang/String;
    .end local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 363
    .restart local v3    # "gpsEnabled":Z
    .restart local v4    # "locationManager":Landroid/location/LocationManager;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 369
    .restart local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 374
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 382
    .restart local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 388
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 398
    .restart local v5    # "nfcManager":Landroid/nfc/NfcManager;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 429
    .end local v5    # "nfcManager":Landroid/nfc/NfcManager;
    .restart local v1    # "am":Landroid/media/AudioManager;
    :pswitch_0
    const-string v6, "mute"

    .line 430
    .restart local v6    # "ringValue":Ljava/lang/String;
    goto :goto_7

    .line 432
    .end local v6    # "ringValue":Ljava/lang/String;
    :pswitch_1
    const-string v6, "vibrate"

    .restart local v6    # "ringValue":Ljava/lang/String;
    goto :goto_7

    .line 438
    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 440
    .restart local v0    # "airplaneMode":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_9

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->rebuildItemList()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$600(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    .line 455
    return-void
.end method
