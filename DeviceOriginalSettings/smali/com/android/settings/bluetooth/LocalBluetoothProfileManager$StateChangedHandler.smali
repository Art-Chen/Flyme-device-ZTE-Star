.class Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mProfile:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p2, "profile"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 255
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x0

    .line 258
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 259
    .local v0, "cachedDevice":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 260
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StateChangedHandler found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->access$100(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, v4, v5, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 264
    :cond_0
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, "newState":I
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 266
    .local v2, "oldState":I
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StateChangedHandler mProfile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-nez v1, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 269
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v3, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;I)V

    .line 273
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 274
    return-void
.end method
