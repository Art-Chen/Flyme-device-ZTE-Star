.class Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/TetherSettings;Lcom/flyme/DeviceOriginalSettings/TetherSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/TetherSettings;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/TetherSettings$1;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    const-string v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 238
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 240
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 242
    .local v4, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    # invokes: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v8, v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 277
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # setter for: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v8}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$202(Lcom/flyme/DeviceOriginalSettings/TetherSettings;Z)Z

    .line 247
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 249
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # setter for: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v7}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$202(Lcom/flyme/DeviceOriginalSettings/TetherSettings;Z)Z

    .line 250
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)V

    goto :goto_0

    .line 251
    :cond_3
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 252
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    const-string v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->mUsbConnected:Z
    invoke-static {v5, v6}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$402(Lcom/flyme/DeviceOriginalSettings/TetherSettings;Z)Z

    .line 253
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)V

    goto :goto_0

    .line 254
    :cond_4
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$500(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 256
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 275
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)V

    goto :goto_0

    .line 259
    :sswitch_0
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 260
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_5

    .line 261
    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 262
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # setter for: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$502(Lcom/flyme/DeviceOriginalSettings/TetherSettings;Z)Z

    goto :goto_1

    .line 268
    .end local v3    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    # setter for: Lcom/flyme/DeviceOriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/flyme/DeviceOriginalSettings/TetherSettings;->access$502(Lcom/flyme/DeviceOriginalSettings/TetherSettings;Z)Z

    goto :goto_1

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
