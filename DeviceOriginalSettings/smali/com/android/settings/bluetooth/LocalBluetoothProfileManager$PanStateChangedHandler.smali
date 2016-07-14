.class Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p2, "profile"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 282
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->mProfile:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/PanProfile;

    .line 287
    .local v0, "panProfile":Lcom/flyme/DeviceOriginalSettings/bluetooth/PanProfile;
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, "role":I
    invoke-virtual {v0, p3, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 289
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 290
    return-void
.end method
