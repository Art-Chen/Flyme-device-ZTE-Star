.class Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 194
    const-string v4, "android.bluetooth.device.extra.RSSI"

    const/16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 195
    .local v3, "rssi":S
    const-string v4, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 196
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    const-string v4, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 200
    .local v1, "cachedDevice":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_0

    .line 201
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1000(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 202
    const-string v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # invokes: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v4, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1400(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;)V

    .line 207
    :cond_0
    invoke-virtual {v1, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 208
    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 209
    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->setNewName(Ljava/lang/String;)V

    .line 210
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 211
    return-void
.end method
