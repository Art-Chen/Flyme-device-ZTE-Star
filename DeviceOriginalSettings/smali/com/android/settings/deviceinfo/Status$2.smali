.class Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status$2;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;

    # invokes: Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;->access$400(Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;)V

    .line 225
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;

    # invokes: Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;->access$500(Lcom/flyme/DeviceOriginalSettings/deviceinfo/Status;)V

    .line 226
    return-void
.end method
