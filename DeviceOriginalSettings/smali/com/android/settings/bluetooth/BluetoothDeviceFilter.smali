.class final Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field static final ALL_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

.field static final BONDED_DEVICE_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

.field static final UNBONDED_DEVICE_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 43
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 46
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static getFilter(I)Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3
    .param p0, "filterType"    # I

    .prologue
    .line 69
    if-ltz p0, :cond_0

    sget-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 70
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    goto :goto_0
.end method
