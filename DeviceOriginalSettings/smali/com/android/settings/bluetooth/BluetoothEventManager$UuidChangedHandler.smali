.class Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$UuidChangedHandler;
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
    name = "UuidChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    .line 351
    return-void
.end method
