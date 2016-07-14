.class Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler$1;->this$0:Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler$1;->this$0:Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;

    # invokes: Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;->access$000(Lcom/flyme/DeviceOriginalSettings/AirplaneModeEnabler;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
