.class Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler$2;->this$0:Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler$2;->this$0:Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;

    # invokes: Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;->access$000(Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;)V

    .line 59
    return-void
.end method
