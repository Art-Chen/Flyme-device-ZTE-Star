.class Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->updatePhoneInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 374
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;

    # invokes: Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->updateDataState()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->access$200(Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;)V

    .line 378
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;

    # invokes: Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->access$300(Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;)V

    .line 379
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;

    # invokes: Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->access$400(Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    .line 389
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;

    invoke-virtual {v0, p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 384
    return-void
.end method