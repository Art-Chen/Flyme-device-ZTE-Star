.class Lcom/flyme/DeviceOriginalSettings/BatteryInfo$1;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/BatteryInfo;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/BatteryInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/BatteryInfo$1;->this$0:Lcom/flyme/DeviceOriginalSettings/BatteryInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/BatteryInfo;->updateBatteryStats()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/BatteryInfo;->access$000(Lcom/flyme/DeviceOriginalSettings/BatteryInfo;)V

    .line 58
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/BatteryInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
