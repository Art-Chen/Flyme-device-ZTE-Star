.class final Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$1;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 63
    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->V:Z
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HeadsetProfile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3, p2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$102(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 66
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$100(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 69
    .local v2, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$200(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 71
    .local v0, "device":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 72
    const-string v3, "HeadsetProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HeadsetProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$200(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$300(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$400(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;I)V

    .line 77
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 80
    .end local v0    # "device":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    .end local v2    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$400(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 81
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    const/4 v4, 0x1

    # setter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mIsProfileReady:Z
    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$502(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;Z)Z

    .line 82
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 85
    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->V:Z
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadsetProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$400(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 87
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;->access$502(Lcom/flyme/DeviceOriginalSettings/bluetooth/HeadsetProfile;Z)Z

    .line 88
    return-void
.end method
